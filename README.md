
# **Call API 2ndline**

## **Giới thiệu**
Ứng dụng API nhỏ gọn, dễ sử dụng, được xây dựng bằng Node.js, cho phép:
1. **Lấy Số**: Gửi yêu cầu tạo đơn hàng mới.
2. **Lấy OTP**: Xem chi tiết đơn hàng đã đặt.

### **Công nghệ sử dụng**
- **Node.js**: Backend
- **Express**: Web framework
- **EJS**: Template engine
- **Axios**: Thư viện HTTP client
- **CSS**: Định dạng giao diện

---

## **Tính năng**
1. **Đặt đơn hàng (Place an Order)**:
   - Yêu cầu nhập API key, Country ID, Service ID, và Operator ID.
   - Hiển thị kết quả đơn hàng trả về từ API.

2. **Kiểm tra đơn hàng (Check an Order)**:
   - Yêu cầu nhập API key và Order ID.
   - Hiển thị chi tiết đơn hàng bao gồm trạng thái, số điện thoại, mã OTP.

---

## **Hướng dẫn cài đặt và sử dụng**

### **1. Yêu cầu hệ thống**
- **Node.js** (v18 trở lên)
- **npm** (Trình quản lý gói của Node.js)

---

### **2. Cách cài đặt**

#### **Đối với người dùng Windows**
1. Tải ứng dụng và giải nén file ZIP.
2. Nhấp đúp vào file `setup.bat` trong thư mục gốc của dự án.
3. Làm theo hướng dẫn trong cửa sổ cmd:
   - Script sẽ tự động kiểm tra và cài đặt Node.js nếu chưa có.
   - Cài đặt các gói cần thiết và khởi chạy ứng dụng.

---

### **3. Cách sử dụng**
1. Sau khi khởi chạy, mở trình duyệt và truy cập:
   ```
   http://localhost:3000
   ```
2. **Đặt đơn hàng**:
   - Nhập các thông tin:
     - API Key
     - Country ID
     - Service ID
     - Operator ID
   - Nhấn **Place Order** để gửi yêu cầu.
3. **Kiểm tra đơn hàng**:
   - Nhập các thông tin:
     - API Key
     - Order ID
   - Nhấn **Check Order** để kiểm tra đơn hàng.

---

### **4. Cấu trúc dự án**
```
api-app/
├── app.js                # File chính chạy ứng dụng
├── views/
│   └── index.ejs         # Giao diện người dùng
├── public/
│   └── style.css         # File định dạng CSS
├── package.json          # File cấu hình npm
├── setup.bat             # Script tự động cho Windows
├── start.bat             # Script tự động chạy app.js
├── env.bat               # Script tự động cài đặt thư viện bắt buộc
```

---

## **Hỗ trợ**
- Nếu bạn gặp vấn đề khi sử dụng, hãy kiểm tra xem Node.js đã được cài đặt đúng phiên bản chưa.

---

## **Bản quyền**
© 2025 Threde. Licensed under the ISC License.
