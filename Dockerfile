FROM python:3.7.7-slim
ENV TZ=Europe/Moscow
RUN apt update && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install tzdata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >> /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN mkdir /app
COPY ./main.py /app
WORKDIR /app/
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "--host", "0.0.0.0", "main:app"]
