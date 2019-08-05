FROM ubuntu:18.04
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install python python-pip libxml2-dev libxslt1-dev git && \
    git clone https://github.com/vmware/nsxansible.git && \
    git clone https://github.com/vmware/nsxraml.git
RUN pip install --upgrade pip
RUN pip install pyvmomi && \
    pip install ansible==2.7.11 && \
    pip install nsxramlclient && \
    pip install jmespath
RUN apt-get -y purge git python-pip
WORKDIR /nsxansible
ADD nsx_deploy.yml /nsxansible
CMD ["/bin/bash", "-c", "cp /nsx-bootstrap/configuration_nsx.yml /nsxansible; ansible-playbook nsx_deploy.yml" ]

