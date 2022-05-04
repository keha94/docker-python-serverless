FROM lambci/lambda:build-python3.7
# Make able to install Node 14 from upstream
# Install Python3.7 and Python2.7 with pip and devel
# Install GCC, Make, NodeJS and findutils
# Clean-up after ourselves
RUN curl --silent --location https://rpm.nodesource.com/setup_14.x | bash - && \
  yum install -y nodejs && \
  curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 - && \
  yum clean all && rm -rf /var/cache/yum

ENV PATH="${PATH}:/root/.poetry/bin"

# Install the serverless framework globally
RUN npm install -g serverless@2

