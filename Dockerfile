FROM python:3.6-alpine
LABEL maintainer="sadok"
WORKDIR /opt
RUN pip install Flask
ADD . /opt
VOLUME /opt
EXPOSE 8080
ENV ODOO_URL="https://www.odoo.com/"
ENV PGADMIN_URL="https://pgadmin.org/"
ENTRYPOINT [ "python","app.py" ]
