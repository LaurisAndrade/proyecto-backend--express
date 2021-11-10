const productos = require('../models/productos');

async function listAll (req = null){
    
    const listAll = await productos().listAll(req)
    return listAll
}

async function Crear (req){
    console.log(req);
    const producto = await productos().crear(req)
    console.log(producto)
    if (producto.insertId !== undefined) {
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
    const producto = await productos().modificar(id, req)
    return producto
}

async function Eliminar (id) {

    const producto = await productos().eliminar(id)
    return producto
}



module.exports = {
    listAll,
    Crear,
    Modificar,
    Eliminar
    
}



