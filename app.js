const express = require('express');
const bodyParser = require('body-parser');
const axios = require('axios');
const app = express();

app.set('view engine', 'ejs');
app.set('views', './views');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public'));

let orderResult = null; // Biến lưu kết quả Place Order
let checkResult = null; // Biến lưu kết quả Check Order
let error = null;       // Biến lưu lỗi (nếu có)

// Route chính
app.get('/', (req, res) => {
    res.render('index', { orderResult, checkResult, error });
});

// API Đặt đơn hàng
app.post('/order', async (req, res) => {
    const { apikey, countryId, serviceId, operatorId } = req.body;
    const orderUrl = 'https://2ndline.pro/apiv1/order';

    try {
        const response = await axios.get(orderUrl, {
            params: {
                apikey,
                countryId,
                serviceId,
                operatorId,
            },
        });

        orderResult = response.data;
        error = null;
    } catch (err) {
        error = err.response ? err.response.data : 'Error placing order';
    }

    res.redirect('/');
});

// API Kiểm tra đơn hàng
app.post('/check-order', async (req, res) => {
    const { apikey, id } = req.body;
    const checkUrl = 'https://2ndline.pro/apiv1/ordercheck';

    try {
        const response = await axios.get(checkUrl, {
            params: {
                apikey,
                id,
            },
        });

        checkResult = response.data;
        error = null;
    } catch (err) {
        error = err.response ? err.response.data : 'Error checking order';
    }

    res.redirect('/');
});

// Khởi động server
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
