FROM python:3.12-rc-bookworm

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

# Add labels to the image
# LABEL Formatting Option 1
LABEL "com.example.vendor"="Big Star Collectibles"
LABEL version="1.0"
LABEL description="The Big Star Collectibles Website \
using the Python base image."

# LABEL Formatting Option 2
# LABEL "com.example.vendor"="Big Star Collectibles" version="1.0" description="The Big Star Collectibles Website \
# using the Python base image."

# LABEL Formatting Option 3
# LABEL "com.example.vendor"="Big Star Collectibles" \
# version="1.0" \
# description="The Big Star Collectibles Website \
# using the Python base image."

CMD ["flask","run","--host=0.0.0.0"]