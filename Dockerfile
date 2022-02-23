FROM debian AS builder

RUN apt-get update && apt-get install -y curl default-libmysqlclient-dev libpq-dev build-essential libssl-dev pkg-config

# Install rust
RUN curl https://sh.rustup.rs/ -sSf | \
  sh -s -- -y --default-toolchain nightly

ENV PATH="/root/.cargo/bin:${PATH}"

# Build webservice dependencies
RUN cd / && cargo new playground
WORKDIR /playground
COPY ./webservice/Cargo.toml /playground/
RUN cargo build && cargo build --release && rm src/*.rs

# Build webservice source code
WORKDIR /webservice
COPY ./webservice /webservice
RUN cargo build --release && rm -rf target/debug

FROM debian

RUN apt-get update && apt-get install -y default-libmysqlclient-dev libpq-dev netcat wget

COPY --from=builder \
  /webservice/target/release/webservice \
  /usr/local/bin/

COPY ./webservice/wait-for.sh /bin/

RUN chmod +x /bin/wait-for.sh

