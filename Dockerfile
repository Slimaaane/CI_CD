FROM python:3.11-slim

WORKDIR /app

COPY addition.py test_addition.py ./

RUN pip install --no-cache-dir pytest

CMD ["python", "-m", "unittest", "test_addition.py", "-v"]