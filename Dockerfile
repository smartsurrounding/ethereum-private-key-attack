FROM --platform=linux/386 python:3

WORKDIR /usr/src/app

RUN apt-get update && \
	apt-get install -y \
		build-essential \
		libpython3-dev python3-dev \
		python3-yaml \
		libyaml-dev

RUN pip3 install --upgrade pip
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "./brute_force_app.py"]
