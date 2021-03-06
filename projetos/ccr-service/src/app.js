const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');

const app = express();
const router = express.Router();

// Configure mongoose
const config = {
    autoIndex: false,
    useNewUrlParser: true,
    useUnifiedTopology: true
};

const uri = process.env.MONGODB_URI;

// Connect to mongoose
mongoose.connect(uri, config);

// Load models.
const Driver = require('./models/driver');
const Place = require('./models/place');
const Review = require('./models/review');

// Loading routes.
const placeRoutes = require('./routes/place');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));

app.use('/places', placeRoutes);

module.exports = app;
