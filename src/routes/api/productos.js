
const express = require('express');
const router = express.Router();
const productosController = require('../../controllers/productosController');

router.get('/listar', async (req, res) => {
    const productos = await productosController.listAll(req.body);
    res.json({ productos });
})

router.post('/crear', async (req, res) => {
    console.log(req.body);
    const {nombre, descripcion, precio} = req.body;
    const post = await productosController.Crear({
        nombre, descripcion, precio
    });

    res.json(post)
 
})

router.put('/modificar', async (req, res) => {
    console.log(req.body);

    const {id,nombre, descripcion, precio} = req.body;
    const post = await productosController.Modificar(id, {
         nombre, descripcion, precio
    });

    res.json(post)
 
})

router.delete('/eliminar/:id', async (req, res) => {

    const id = req.params.id
    const respuesta = await productosController.Eliminar(id)
    res.json(respuesta)
})



module.exports = router