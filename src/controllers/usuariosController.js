const usuarios = require('../models/usuarios');

async function Crear (req){
    console.log(req);
    const usuario = await usuarios().crear(req)
    console.log(usuario)
    if (usuario.insertId !== undefined) {
        return {
            'mensaje': 'Usuario creado con exito'
        }
    } else {
        return {
            'mensaje': 'Error al crear el usuario'
        }
    }
}


module.exports = {
    Crear
   
    
}



