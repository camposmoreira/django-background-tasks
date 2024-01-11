FROM python:3.11.7

WORKDIR /app

COPY . /app

COPY tox_3_11_7.ini /app/tox.ini


# Install tox (you may adjust this according to your requirements)
RUN pip install tox

# Run tox when the container starts
CMD ["tox"]
