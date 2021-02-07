const express = require("express");
const morgan = require('morgan');
require("dotenv").config();
const app = express();

// Middleware

app.use(express.json());

// Get All Pizzas

app.get("/api/v1/pizzas", (req, res) => {
  // console.log("Route Handler to Get All Pizzas is now running")
  res.status(200).json({
    status: "success",
    data: {
      pizza: ["cheese pizza, pepperoni"],
    },
  });
});

// Get a Pizza

app.get("/api/v1/pizzas/:id", (req, res) => {
  console.log(req.params);

  res.status(200).json({
    data: {
      pizza: "cheese",
    },
  });
});

// Create a Pizza

app.post("/api/v1/pizzas", (req, res) => {
  console.log(req.body);

  res.status(201).json({
    data: {
      pizza: "cheese",
    },
  });
});

// Update Pizzas

app.put("/api/v1/pizzas/:id", (req, res) => {
  console.log(req.params.id);
  console.log(req.body);

  res.status(200).json({
    data: {
      pizza: "cheese",
    },
  });
})

// Delete Pizzas

app.delete("/api/v1/pizzas/:id", (req, res) => {
  res.status(204).json({
    status: "success",
  });
});

const hostname = 'localhost';
const port = process.env.PORT || 3031;
app.listen(port, () => {
  console.log(`Server listening on host: ${hostname} port: ${port}`);
});

