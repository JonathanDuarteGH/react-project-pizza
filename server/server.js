const express = require("express");
const morgan = require('morgan');
require("dotenv").config();
const app = express();
const db = require("./db");

// Middleware

app.use(express.json());

// Get All Pizzas

app.get("/api/v1/pizzas", async (req, res) => {

  try {
    const results = await db.query("SELECT * FROM pys");
    console.log(req.params.id);
    console.log(results);
    res.status(200).json({
      status: "success",
      results: results.rows.length,
      data: {
        pizzas: results.rows,
      },
    });
  } catch (error) {
    console.log(error)
  }
});

// Get a Pizza

app.get("/api/v1/pizzas/:id", async (req, res) => {
  console.log(req.params.id);

  try {
    const results = await db.query("SELECT * FROM pys WHERE pizza_id = $1", [req.params.id]);
    console.log(results.rows);

    res.status(200).json({
      status: "success",
      data: {
        pizzas: results.rows[0],
      },
    });
  } catch (error) {
    console.log(error);
  }


});

// Create a Pizza

app.post("/api/v1/pizzas", async (req, res) => {
  console.log(req.body);

  try {
    const results = await db.query("INSERT INTO pys (_name, _category, _price, _rating, _description) VALUES ($1, $2, $3, $4, $5) RETURNING *", [req.body._name, req.body._category, req.body._price, req.body._rating, req.body._description]);
    console.log(results);
    res.status(201).json({
      data: {
        pizza: results.rows[0],
      },
    });
  } catch (error) {
    console.log(error);
  }


});

// Update Pizzas

app.put("/api/v1/pizzas/:id", async (req, res) => {
  console.log(req.params.id);
  console.log(req.body);

  try {
    const results = await db.query("UPDATE pys SET _name = $1, _category = $2, _price = $3, _rating = $4, _description = $5 WHERE pizza_id = $6 RETURNING *", [req.body._name, req.body._category, req.body._price, req.body._rating, req.body._description, req.params.id]);
    // console.log(results);
    res.status(200).json({
      data: {
        pizza: results.rows[0],
      },
    });
  } catch (error) {
    console.log(error);
  }

})

// Delete Pizzas

app.delete("/api/v1/pizzas/:id", async (req, res) => {

  try {
    const results = await db.query("DELETE FROM pys WHERE pizza_id = $1", [req.params.id]);
    console.log(results)
    res.status(204).json({
      status: "success"
    });
  } catch (error) {
    console.log(error)
  }
});

const hostname = 'localhost';
const port = process.env.PORT || 3031;
app.listen(port, () => {
  console.log(`Server listening on host: ${hostname} port: ${port}`);
});

