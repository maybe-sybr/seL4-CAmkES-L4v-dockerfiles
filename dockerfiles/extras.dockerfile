ARG USER_BASE_IMG=trustworthysystems/sel4
FROM $USER_BASE_IMG

# This dockerfile is a shim between the images from Dockerhub and the 
# user.dockerfile.
# Add extra dependencies in here!

# For example, uncomment this to get cowsay on top of the sel4/camkes/l4v
# dependencies:

RUN apt-get update -q \
    && apt-get install -y --no-install-recommends \
        # Add more dependencies here
        cowsay \
        sudo 
