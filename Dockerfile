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
RUN apt-get update && \
    apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && \
    apt-get -y install docker-ce docker-ce-cli containerd.io
USER jenkins