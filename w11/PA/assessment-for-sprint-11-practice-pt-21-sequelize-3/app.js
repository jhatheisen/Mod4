require('express-async-errors');
require('dotenv').config();
const express = require('express');
const app = express();
// import model
const { WarehouseItem } = require('./db/models');

app.use(express.json());

// get items
app.get('/items', async (req, res) => {
  const items = await WarehouseItem.findAll({
    where: {
      isUsed: false
    }
  });
  res.json(items);
});

// get items name
app.get('/items/:name', async (req, res) => {
  const { name } = req.params;
  const item = await WarehouseItem.findOne({
    where: {
      name
    }
  });
  if (item) {
    res.json(item)
  } else {
    res.status(404);
    res.json({
      message: "Warehouse Item not found"
    });
  }
});

// update item by id
app.put('/items/:id', async (req, res) => {
  const { id } = req.params;
  const { name, price, quantity, isUsed } = req.body;

  const updatedItem = await WarehouseItem.findByPk(id);

  if (updatedItem) {
    await updatedItem.update({
      name,
      price,
      quantity,
      isUsed
    });
    return res.json(updatedItem);
  } else {
    res.status(404);
    return res.json({
      message: "Warehouse Item not found"
    });
  }

});

app.delete('/items/:id', async (req,res) => {
  const { id } = req.params;

  const badItem = await WarehouseItem.findOne({
    where: {id}
  })

  if (badItem) {
    await badItem.destroy();
    return res.json({
      message: 'Successfully deleted'
    });
  } else {
    res.status(404);
    return res.json({
      message: "Warehouse Item not found"
    });
  }
});

if (require.main === module) {
  const port = 8003;
  app.listen(port, () => console.log('Server-3 is listening on port', port));
} else {
  module.exports = app;
}
