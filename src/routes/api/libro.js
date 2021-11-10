
const express = require('express');
const router = express.Router();
const librosController = require('../../controllers/librosController');

router.get('/listar', async (req, res) => {
    const libros = await librosController.listAll(req.body);
    res.json({ libros });
})


router.post('/crear', async (req, res) => {
    console.log(req.body);
    const { codigo, titulo, autor, edicion, idioma, cantidad,genero_id,created_at} = req.body;
    const post = await librosController.Crear({
    
        codigo,
        titulo,
        autor,
        edicion,
        idioma,
        cantidad,
        genero_id,
        created_at
    });

    res.json(post)
 
})

router.put('/modificar', async (req, res) => {
    console.log(req.body);

    const {id,codigo, titulo, autor, edicion, idioma, cantidad,genero_id,created_at} = req.body;
    const post = await librosController.Modificar(id, {
         
        codigo,
        titulo,
        autor,
        edicion,
        idioma,
        cantidad,
        genero_id,
        created_at
    });

    res.json(post)
 
})
router.delete('/eliminar/:id', async (req, res) => {

    const id = req.params.id
    const respuesta = await librosController.Eliminar(id)
    res.json(respuesta)
})






module.exports = router