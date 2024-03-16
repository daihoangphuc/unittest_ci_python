# Sử dụng image chứa Python
FROM python:3.8

# Sao chép các tệp mã nguồn vào container
COPY . /app

# Thiết lập thư mục làm việc
WORKDIR /app

# Chạy các unit test khi container được khởi chạy
CMD ["python", "-m", "unittest", "discover", "-s", ".", "-p", "test_*.py"]


FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install unittest2
USER jenkins
