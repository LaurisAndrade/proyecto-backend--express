/*const bcrypt = require('bcryptjs');

const helpers = {};

//cifrar contraseña.. cuando se registra el logeo
helpers.encryptPassword = async(password) => {
    const salt = await bcrypt.genSalt(10);
    const hash =   await bcrypt.hash(password, salt);
    return hash;
};

//comparar contraseña
helpers.compararPassword = async (password, savePassword) => {
    try{
        await bcrypt.compare(password, savePassword);//compara 2 string
    } catch(e) {
        console.log(e);
    }
    
};
module.exports = helpers;*/