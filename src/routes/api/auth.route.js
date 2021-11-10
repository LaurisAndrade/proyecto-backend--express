const {login, register, getinfotoken} = require('../controllers/auth.controller');
const passport  = require('passport');



const router = require('express').Router();

// crear usuario
router.post('/login', login);
// iniciar sesion
router.post('/register', register);

router.get('/getinfotoken',
    passport.authenticate('jwt', { session: false }),
    getinfotoken);


module.exports = router;