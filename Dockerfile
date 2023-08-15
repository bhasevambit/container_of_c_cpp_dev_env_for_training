# --- Base Image pull from DockerHub ---
FROM ubuntu:latest

# --- Shell & ENV Setting ---
SHELL ["/bin/bash", "-c"]

# --- OS Package Update ---
RUN apt update

# --- OS Package upgrade ---
RUN apt upgrade -y

# --- OS Timezone Setting ---
RUN apt install -y tzdata
ENV TZ=Asia/Tokyo

# --- OS Basic Package Install ---
RUN apt install -y vim git wget

# --- C/C++ Development Tools Install ---
RUN apt install -y build-essential cmake

# --- Other Package Install ---
RUN apt install ffmpeg
