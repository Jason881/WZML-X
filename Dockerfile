FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN curl -fsSL https://raw.githubusercontent.com/wiserain/rclone/mod/install.sh | bash 

COPY . .

CMD ["bash", "start.sh"]
