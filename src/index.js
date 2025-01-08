const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./database.js")

const PORT = 5000;

app.use(cors());
app.use(express.json());

const routes = {
    candidates: "/candidates",
    users: "/users"
};

function createGetRoute(route, query) {
    app.get(route, async(req, res) => {
        try {
            const result = await pool.query(query);
            res.json(result.rows);
        } catch (error) {
            console.error(error.message);
        }
    });
}

createGetRoute(routes.candidates, "SELECT * FROM candidates");

app.listen(PORT, () => { 
    console.log(`server has started on PORT ${PORT}`)
});