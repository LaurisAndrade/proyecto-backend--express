const autores = require('../models/autor');

async function listAll (req = null){
    
    const listAll = await autores().listAll(req)
    return listAll
}

async function Crear (req){
    console.log(req);
    const autor = await autores().crear(req)
    console.log(autor)
    if (autor.insertId !== undefined) {
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
    const autor = await autores().modificar(id, req)
    return autor
}

async function Eliminar (id) {

    const autor = await autores().eliminar(id)
    return autor
}

module.exports = {
    listAll,
    Crear,
    Modificar,
    Eliminar
   
    
}



