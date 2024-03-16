# Sử dụng image chứa Python
FROM python:3.8

# Sao chép các tệp mã nguồn vào container
COPY . /app

# Thiết lập thư mục làm việc
WORKDIR /app

# Cài đặt dependencies
RUN pip install -r requirements.txt

# Chạy các unit test khi container được khởi chạy
CMD ["python", "-m", "unittest", "discover", "-s", ".", "-p", "test_*.py"]
