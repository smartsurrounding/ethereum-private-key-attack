FROM python:latest

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libpython3-dev python3-dev
RUN apt-get install -y python3-yaml
RUN apt-get install -y libyaml-dev

RUN pip3 install --upgrade pip
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "./brute_force_app.py"]
