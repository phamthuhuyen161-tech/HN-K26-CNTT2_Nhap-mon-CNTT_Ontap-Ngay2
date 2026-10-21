# BÀI LÀM – ÔN TẬP NGÀY 2

- **Họ tên:** Phạm Thu Huyền
- **Lớp:** CNTT2
- **Link repository:**
- **Hệ điều hành (Windows/macOS):** Windows

## Bài 1. Lọc log thủ công

### Lệnh đã chạy

get-content logs/access.log | select-string "ERROR" > logs/error_report.txt
get-content logs/error_report.txt


### 2 dòng lỗi đầu tiên trong error_report.txt

2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)

## Bài 2. Đếm bằng pipeline

### Lệnh

get-content logs/access.log | select-string "WARNING" | Measure-object

get-content logs/access.log | select-string "ERROR" | Measure-object

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

WARNING trong access.log:4
ERROR trong payment.log:6

## Bài 3. Chạy script auto_warning (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)
.\auto_warning.ps1

### Nội dung file logs/warning_report.txt

2025-10-18 09:19:13 [WARNING] Cong thanh toan phan hoi cham
2025-10-18 09:28:16 [WARNING] Nhieu lan nhap sai ma OTP
2025-10-18 09:43:01 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:46:22 [WARNING] So du vi gan bang hoc phi
2025-10-18 09:49:43 [WARNING] So du vi gan bang hoc phi


## Bài 4. Báo cáo tổng hợp

### Các lệnh đã chạy

"=== TONG HOP ACCESS LOG ===" > logs/tong_hop_ngay2.txt
get-content logs/access.log | select-string "ERROR" logs/tong_hop_ngay2.txt 
(get-content logs/payment.log | select-string "WARNING" | Measure-object).count >> logs/tong_hop_ngay2.txt 

### Nội dung file logs/tong_hop_ngay2.txt

=== TONG HOP ACCESS LOG ===

2025-10-18 08:17:59 [ERROR] Khong tim thay trang /lich-thi (404)
2025-10-18 08:25:55 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:33:51 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:37:19 [ERROR] Ket noi may chu du lieu that bai
2025-10-18 08:49:43 [ERROR] Het thoi gian cho (timeout)
2025-10-18 08:53:11 [ERROR] Het thoi gian cho (timeout) 

5


## Bài 5. Câu hỏi ngắn

- **a)**
+> ghi đè là xóa toàn bộ nội dung cũ trong file và ghi nội dung mới vào
+>>ghi nối tiếp là giữ nguyên nội dung cũ và ghi thêm nội dung mới vào cuối file
- **b)**:sẽ xóa mất dòng tiêu đề === TONG HOP ACCESS LOG === ở lệnh thứ nhất và chỉ ghi đè số đếm xuống
- **c)**:giúp script có thể chạy linh hoạt trên mọi máy tính mà không bị lôi do cấu trúc thư mục cá nhân

## Tự chấm (điền sau khi có đáp án)

- **Điểm tự chấm:** ..../100
- **Lỗi mình đã mắc và cách sửa:**
