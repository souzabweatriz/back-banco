const { format } = require("@fast-csv/format");
const PDFDocument = require("pdfkit");

const postModel = require("../models/postModel");

const exportPostCSV = async (req, res) => {
    try {
        const posts = await postModel.getPost();

        res.setHeader("Content-Disposition", "attachment; filename=wizards.csv");
        res.setHeader("Content-Type", "text-csv");

        const csvStream = format({ headers: true});
        csvStream.pipe(res);

        posts.forEach((post) =>{
            csvStream.write({
                Id: post.id,
                Description: post.description
            });
        })
        csvStream.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o CSV"}); 
    }
};

const exportPostPDF = async (req, res) => {
    try {
        const posts = await postModel.getPost();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=wizards.pdf")

        const doc = new PDFDocument();
        doc.pipe(res);
        
        //Titulo
        doc.fontSize(20).text("Relatorio de Posts", {align: "center"});
        doc.moveDown();

        //Cabeçalho
        doc.fontSize(12).text("Id | Descrição", {underline: true});
        doc.moveDown(0.5);

        //Add dados dos posts
        wizards.forEach((post) => {
            doc.text(
                `${post.id} | ${post.description}`
            );
        });

        doc.end(); 
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF"}); 
    }
};

module.exports = { exportPostCSV, exportPostPDF };