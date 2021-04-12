FROM smizy/scikit-learn:0.22.2.post1-alpine

RUN python -m pip install --upgrade pip

RUN apk add --update --no-cache libgomp

COPY requirements.txt .
RUN pip install -r requirements.txt
