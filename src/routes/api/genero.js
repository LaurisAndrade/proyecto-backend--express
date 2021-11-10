
const express = require('express');
const router = express.Router();
const generoController = require('../../controllers/generoController');

router.get('/listar', async (req, res) => {
    const generos = await generoController.listAll(req.body);
    res.json({ generos });
})


router.post('/crear', async (req, res) => {
    console.log(req.body);
    const { codigo,nombre, created_at} = req.body;
    const post = await generoController.Crear({
        codigo,
        nombre,
        created_at
    });

    res.json(post)
 
})

router.put('/modificar', async (req, res) => {
    console.log(req.body);

    const {id,codigo,nombre, created_at} = req.body;
    const post = await generoController.Modificar(id, {
        codigo,
        nombre,
        created_at
    });

    res.json(post)
 
})

router.delete('/eliminar/:id', async (req, res) => {

    const id = req.params.id
    const respuesta = await generoController.Eliminar(id)
    res.json(respuesta)
})






module.exports = router