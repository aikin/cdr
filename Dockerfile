# BUILD-USING:    docker build -t codewars/cli-runner .
# TEST-USING:     docker run --rm -i -t --name=test-cli-runner --entrypoint=/bin/bash codewars/cli-runner -s
# RUN-USING:      docker run --rm --name=cli-runner codewars/cli-runner --help

# Append any relevant run args as per the help

FROM dockerfile/nodejs

# Install Ruby
RUN apt-get install -y ruby

# Install Coffeescript


# Install Python 3


# ADD cli-runner and install node deps
ADD . /cli-runner
WORKDIR /cli-runner
RUN npm install

ENTRYPOINT ["node", "run"]