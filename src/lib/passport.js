const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;

//const pool = require('../database');
//const helpers = require('../lib/helpers');

passport.use('local.registro' , new LocalStrategy({
    nombre_usuarioField : 'nombre_usuario',
    passwordField : 'password',
    passReqToCallback: true
}, async(req ,nombre_usuario, password, done) => {
   /* const {nombre_completo} = req.body;
    const newUsuario = {
        nombre_usuario,
        password,
        nombre_completo
    };
    //cifrar contraseña
    //await: asincrono
    newUsuario.password = await helpers.encryptPassword(password);

   const resultado =  await pool.query('INSERT INTO usuarios SET ?', [newUsuario]);
   console.log(resultado);*/
   console.log(req.body);

}));

/*passport.serializeUser((usr ,done) => {

});*/

