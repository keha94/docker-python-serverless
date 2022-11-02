FROM amazon/aws-sam-cli-build-image-python3.9

# Install Node 16, Poetry and clean up after ourselves
RUN curl -fsSL https://rpm.nodesource.com/setup_16.x | bash - && \
  yum install -y nodejs && \
  curl -sSL https://install.python-poetry.org | python3 - && \ 
  yum clean all && rm -rf /var/cache/yum

# Add poetry to the PATH
ENV PATH="${PATH}:/root/.local/bin"

# Install the serverless framework globally
RUN npm install -g serverless@3

