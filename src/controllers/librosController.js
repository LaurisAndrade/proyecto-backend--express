const libros = require('../models/libros');

async function listAll (req = null){
    
    const listAll = await libros().listAll(req)
    return listAll
}

async function Crear (req){
    console.log(req);
    const libro = await libros().crear(req)
    console.log(libro)
    if (libro.insertId !== undefined) {
        return {
            'mensaje': 'Producto creado con exito'
        }
    } else {
        return {
            'mensaje': 'Error al crear un producto'
        }
    }
}

async function Modificar (id, req){
    console.log(req);
    const libro = await libros().modificar(id, req)
    return libro
}

async function Eliminar (id) {

    const libro = await libros().eliminar(id)
    return libro
}

module.exports = {
    listAll,
    Crear,
    Modificar,
    Eliminar
   
    
}



