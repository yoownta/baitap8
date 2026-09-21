# Catalog Management - GraphQL API 🚀

## Giới thiệu
Đây là dự án Quản lý Sản phẩm & Danh mục (Catalog Management) xây dựng bằng **Spring Boot** kết hợp với **GraphQL**. Giao diện Frontend được thiết kế theo phong cách siêu hiện đại (Premium Dashboard), cung cấp trải nghiệm tuyệt vời và chuyên nghiệp trong việc quản lý dữ liệu.

## Các công nghệ sử dụng
- **Backend:** Java 17, Spring Boot, Spring for GraphQL, Spring Data JPA, Lombok.
- **Database:** Microsoft SQL Server (kèm script tự động sinh hàng loạt dữ liệu mẫu).
- **Frontend:** HTML5, Vanilla JavaScript (Fetch API), Bootstrap 5, Bootstrap Icons, Custom CSS (Giao diện Glassmorphism).
- **API Testing:** GraphiQL (Tích hợp sẵn tại đường dẫn `/graphiql`).

## Tính năng nổi bật
- Xây dựng API chuẩn GraphQL đầy đủ các thao tác CRUD.
- **Quản lý Sản Phẩm:** Hiển thị danh sách, thêm mới, sửa chữa, xoá sản phẩm, phân loại theo danh mục.
- **Quản lý Danh Mục:** Quản lý tập trung các nhóm danh mục.
- **Thống kê Dashboard:** Tự động tính toán tổng số lượng sản phẩm, tổng tồn kho, số lượng danh mục theo thời gian thực.
- **Sắp xếp & Tìm kiếm (Client-side):** Lọc sản phẩm theo tên, theo nhóm danh mục, sắp xếp theo giá cả một cách mượt mà không cần load lại trang.

## Hướng dẫn cài đặt
1. **Tải mã nguồn:**
   ```bash
   git clone https://github.com/yoownta/baitap8.git
   cd baitap8
   ```

2. **Cấu hình Database (SQL Server):**
   - Mở SQL Server Management Studio (SSMS).
   - Chạy toàn bộ file `database.sql` đính kèm trong thư mục gốc của project để tự động tạo cơ sở dữ liệu `baitap8` và chèn dữ liệu mẫu.
   - Tài khoản SQL Server mặc định được cấu hình trong source: User `sa`, Mật khẩu `1234@a$`.

3. **Chạy ứng dụng Spring Boot:**
   Sử dụng Maven để chạy ứng dụng:
   ```bash
   mvn spring-boot:run
   ```

4. **Trải nghiệm:**
   - Giao diện quản trị (Dashboard): Truy cập `http://localhost:8088/`
   - Giao diện test API (GraphiQL): Truy cập `http://localhost:8088/graphiql`

## Thông tin thực hiện
- **Họ và tên:** Phan Tuấn Thanh
- **MSSV:** 24133054
- **Bài tập:** Tuần 7
