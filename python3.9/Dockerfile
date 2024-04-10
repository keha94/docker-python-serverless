FROM amazonlinux:2023

# Install Node, Poetry and clean up after ourselves
RUN curl -fsSL https://rpm.nodesource.com/setup_20.x | bash - && yum install -y nodejs
RUN curl -sSL https://install.python-poetry.org | python3 -
RUN yum clean all && rm -rf /var/cache/yum

# Add poetry to the PATH
ENV PATH="${PATH}:/root/.local/bin"

# Install the serverless framework globally
RUN npm install -g serverless@3

