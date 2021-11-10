const editoriales = require('../models/editorial');

async function listAll (req = null){
    
    const listAll = await editoriales().listAll(req)
    return listAll
}

async function Crear (req){
    console.log(req);
    const editorial = await editoriales().crear(req)
    console.log(editorial)
    if (editorial.insertId !== undefined) {
        return {
            'mensaje': 'Editorial creada con exito'
        }
    } else {
        return {
            'mensaje': 'Error al crear un producto'
        }
    }
}

async function Modificar (id, req){
    console.log(req);
    const editorial = await editoriales().modificar(id, req)
    return editorial
}

async function Eliminar (id) {

    const editorial = await editoriales().eliminar(id)
    return editorial
}

module.exports = {
    listAll,
    Crear,
    Modificar,
    Eliminar
   
    
}



