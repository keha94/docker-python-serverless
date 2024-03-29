FROM amazonlinux
# Make able to install Node 14 from upstream
# Install Python3.7 and Python2.7 with pip and devel
# Install GCC, Make, NodeJS and findutils
# Clean-up after ourselves
RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash - && \
  yum install -y python3-pip python3-devel python2-devel python2-pip gcc-c++ make nodejs findutils git tar && \
  curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 - && \
  yum clean all && rm -rf /var/cache/yum

ENV PATH="${PATH}:/root/.poetry/bin"

# Install the serverless framework globally
RUN npm install -g serverless@2

# Install/upgrade pip, pipenv, for both Python 2.7 and Python 3.7
RUN ls -la /usr/local/bin
RUN find / -iname "pip*"

RUN pip-3 install --no-cache-dir --upgrade pip pipenv awscli && \
  pip-2 install --no-cache-dir --upgrade pip pipenv awscli
