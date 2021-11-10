
const express = require('express')
const morgan = require('morgan')
const path = require('path')
const session = require('express-session')
const cors = require('cors')
const app = express()
const MySqlStore = require('express-mysql-session');
const exphbs = require('express-handlebars');
const flash = require('connect-flash');

const {database} = require('./keys');

/** MIDDLEWARE */
app.use(flash());
app.use(express.json());
app.use(morgan('dev'));
app.use(express.urlencoded({extended:false}));

/** CORS - PETICIONES*/
app.use(express.urlencoded({extended:false}))
app.use(cors())

/** SESSION */
app.use(session({
    resave: false,
    saveUninitialized: false,
    secret: 'faztmysqlnodesession',
    cookie: { 
        expires: new Date(Date.now() + 3600000)
    },
    store: new MySqlStore(database)
}))

/** CONFIGURACIÓN */
app.set('port', process.env.PORT || 4000) /** PUERTO */

/** CARPETA PUBLICA */
app.use(express.static(path.join(__dirname, 'public')))

//Configurar la ruta de vistas
app.set('views',path.join(__dirname,'views'));

/** API ROUTES */
app.use('/api/productos',require('./routes/api/productos'));
app.use('/api/autor',require('./routes/api/autor'));
app.use('/api/genero',require('./routes/api/genero'));
app.use('/api/usuario',require('./routes/api/usuario'));
app.use('/api/libro',require('./routes/api/libro'));
app.use('/api/editorial',require('./routes/api/editorial'));



//variables globales
app.use((req,res,next)=>{
    app.locals.success = req.flash('success');
    next();
});

//rutas
app.use(require('./routes'));

//Configuración hander
app.engine('.hbs', exphbs({
    defaultLayout:'main',
    layoutsDir: path.join(app.get('views'),'layouts'),
    partialsDir: path.join(app.get('views'),'partials'),
    extname:'.hbs',
    helpers: require('./lib/handlebars')
}));
app.set('view engine','.hbs');

/** CORRIENDO EL SERVER */
app.listen(app.get('port'), () => {
    console.log(`Compilando correctamente por el puerto ${app.get('port')}`)
});


