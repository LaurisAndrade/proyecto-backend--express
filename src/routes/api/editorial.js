
const express = require('express');
const router = express.Router();
const editorialController = require('../../controllers/editorialController');

router.get('/listar', async (req, res) => {
    const editoriales = await editorialController.listAll(req.body);
    res.json({ editoriales });
})


router.post('/crear', async (req, res) => {
    console.log(req.body);
    const { codigo,nombre, created_at} = req.body;
    const post = await editorialController.Crear({
        codigo,
        nombre,
        created_at
    });

    res.json(post)
 
})

router.put('/modificar', async (req, res) => {
    console.log(req.body);

    const {id,codigo,nombre, created_at} = req.body;
    const post = await editorialController.Modificar(id, {
        codigo,
        nombre,
        created_at
    });

    res.json(post)
 
})

router.delete('/eliminar/:id', async (req, res) => {

    const id = req.params.id
    const respuesta = await editorialController.Eliminar(id)
    res.json(respuesta)
})






module.exports = router