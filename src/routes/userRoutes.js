const express = require("express");
const router = express.Router();
const userController = require("../controllers/userController");
const upload = require("../config/upload.js"); 
const apiKeyMiddleware = require("../config/apiKey.js");


router.use(apiKeyMiddleware);
/**
 * @swagger
 * tags:
 *   name: Users
 *   description: Gerenciamento de Usuários
 */
/**
 * @swagger
 * /api/users:
 *   get:
 *     summary: Lista todos os Usuários
 *     tags: [Users]
 *     parameters:
 *       - in: query
 *         name: name
 *         schema:
 *           type: string
 *         description: Filtro por nome
 *     responses:
 *       200:
 *         description: Lista de bruxos
 */
router.get("/users", userController.getAllUsers);

/**
 * @swagger
 * /api/users/{id}:
 *   get:
 *     summary: Busca Usuário por ID
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Usuário encontrado
 *       404:
 *         description: Usuário não encontrado
 */
router.get("/users/:id", userController.getUserById);

/**
 * @swagger
 * /api/users:
 *   post:
 *     summary: Cria um novo Usuário
 *     tags: [Users]
 *     requestBody:
 *       required: true
 *       content:
 *         multipart/form-data:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               house_id:
 *                 type: integer
 *               photo:
 *                 type: string
 *                 format: binary
 *     responses:
 *       201:
 *         description: Usuário criado
 */
router.post("/users", upload.single("photo"), userController.createUser);


/**
 * @swagger
 * /api/users/{id}:
 *   put:
 *     summary: Atualiza um Usuário
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               house_id:
 *                 type: integer
 *     responses:
 *       200:
 *         description: Usuário atualizado
 */
router.put("/users/:id", userController.updateUser);

/**
 * @swagger
 * /api/users/{id}:
 *   delete:
 *     summary: Deleta um Usuário
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Usuário deletado
 */

router.delete("/users/:id", userController.deleteUser);

module.exports = router;