const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.send("Node app deployed by CI/CD");
});

app.get("/health", (req, res) => {
    res.status(200).send("ok");
});

app.listen(3000, "0.0.0.0", () => {
    console.log("Server running on port 3000");
});