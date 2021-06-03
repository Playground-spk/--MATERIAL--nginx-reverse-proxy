const express = require("express");



const app = express();


app.use(express.static(require("path").join(__dirname, "public")));



const port = process.env.PORT || 8000;
const server = app.listen(port, () => {
  console.log(`App running on port ${port}...`);
});