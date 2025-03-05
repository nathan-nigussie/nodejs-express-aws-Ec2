const express=require('express');
const app=express();
const port=3000;

// Root route
app.get('/',(req,res) => {
    res.send('<h1>Express Demo App</h1><h4>Message: Success</h4><p>Version 1.0</p>');
});

// Products route
app.get('/products',(req,res) => {
    res.json([
        {
            productId: '101',
            price: 100
        },
        {
            productId: '102',
            price: 150
        }
    ]);
});

// Start the server (this should be outside any route)
app.listen(port,() => {
    console.log(`Demo app is up and listening on port: ${port}`);
});
