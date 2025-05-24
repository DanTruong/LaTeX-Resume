FROM ubuntu:22.04

# Set environment to non-interactive to prevent prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-latex-extra \
    texlive-xetex \
    pandoc \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /data

# Copy project files into container
COPY . .

# Default command
CMD ["make"]
