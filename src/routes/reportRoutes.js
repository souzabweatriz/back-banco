const express = require("express");
const router = express.Router();
const apiKeyMiddleware = require("../config/apiKey")
const reportController = require("../controllers/reportController")

router.use(apiKeyMiddleware);
router.get("/report/csv", reportController.exportPostCSV);
router.get("/report/pdf", reportController.exportPostPDF);

module.exports = router;