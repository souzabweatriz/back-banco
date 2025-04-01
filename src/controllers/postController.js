const postModel = require("../models/postModel");

const getAllPosts = async (req, res) => {
    try {
        const posts = await postModel.getPost();
        res.json(posts)
    } catch (error) {
        res.status(400).json({ message: "Erro ao buscar Post"});
    }
};

const getPost = async (req, res) => {
    try {
        const posts = await postModel.getPostById(req.params.id);
        if(!posts){
            return res.status(404).json({message: "Post não encontrado"});
        }
        res.json(posts)
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar Post" });
    }
};

const createPost = async (req, res) => {
    try {
        const { user_id, description } = req.body
        const newPost = await userModel.createPost(user_id, description);
        res.status(201).json(newPost);
    } catch (error) {
        res.status(400).json({ message: "Erro ao criar Post"})
    }
};

const updatePost = async (req, res) => {
    try {
        const { user_id, description } = req.body
        const updatedPost = await postModel.updatePost(req.params.id, user_id, description);
        if(!updatedPost){
            return res.status(404).json({ message: "Post não encontrado" });
        }
        res.json(updatedPost);
    } catch (error) {
        res.status(400).json({ message: "Erro ao atualizar Post"})
    }
};

const deletePost = async (req, res) => {
    try {
        const message = await postModel.deletePost(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(400).json({ message: "Erro ao deletar Post" });
    }
};



module.exports = { getAllPosts, getPost, createPost, updatePost, deletePost };