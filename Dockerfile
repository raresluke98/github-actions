FROM python:3.7 as github-actions

# RUN pip install pytest

RUN apt-get update && apt-get install -y \
    python3.7-dev \
    libpq-dev

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /github-actions
#COPY ./requirements.txt ./
COPY ./ ./
RUN pip install --upgrade pip setuptools wheel \
    && pip install --no-cache-dir -r requirements.txt

# VOLUME ["/github-actions"]
WORKDIR /github-actions

CMD ["python", "-m", "pytest"]
# CMD ["sleep", "infinity"]