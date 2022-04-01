# https://developers.redhat.com/articles/2021/08/26/build-your-first-python-application-linux-container
FROM registry.access.redhat.com/ubi8/python-39

EXPOSE 8000

COPY . /opt/app-root/src

CMD /bin/bash -c 'python3 -u web.py'

# build:
# podman build -t podman_demo .

# then:
# podman run --detach --publish 8000:8000 --name=pythonweb localhost/podman_demo

