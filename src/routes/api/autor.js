
const express = require('express');
const router = express.Router();
const autoresController = require('../../controllers/autorController');

router.get('/listar', async (req, res) => {
    const autores = await autoresController.listAll(req.body);
    res.json({ autores });
})


router.post('/crear', async (req, res) => {
    console.log(req.body);
    const { nombre} = req.body;
    const post = await autoresController.Crear({
    
        nombre
    });

    res.json(post)
 
})

router.put('/modificar', async (req, res) => {
    console.log(req.body);

    const {id,nombre} = req.body;
    const post = await autoresController.Modificar(id, {
         nombre
    });

    res.json(post)
 
})
router.delete('/eliminar/:id', async (req, res) => {

    const id = req.params.id
    const respuesta = await autoresController.Eliminar(id)
    res.json(respuesta)
})






module.exports = router