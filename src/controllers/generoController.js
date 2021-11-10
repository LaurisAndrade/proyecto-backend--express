const generos = require('../models/genero');

async function listAll (req = null){
    
    const listAll = await generos().listAll(req)
    return listAll
}

async function Crear (req){
    console.log(req);
    const genero = await generos().crear(req)
    console.log(genero)
    if (genero.insertId !== undefined) {
        return {
            'mensaje': 'Genero creado con exito'
        }
    } else {
        return {
            'mensaje': 'Error al crear un producto'
        }
    }
}

async function Modificar (id, req){
    console.log(req);
    const genero = await generos().modificar(id, req)
    return genero
}

async function Eliminar (id) {

    const genero = await generos().eliminar(id)
    return genero
}

module.exports = {
    listAll,
    Crear,
    Modificar,
    Eliminar
   
    
}



