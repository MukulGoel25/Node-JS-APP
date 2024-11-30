const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
    res.send("Welcome to the Project! This Node.js app is running on Docker and deployed using Jenkins on EC2.");
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});