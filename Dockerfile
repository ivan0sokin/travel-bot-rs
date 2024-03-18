FROM rust:1.76.0 AS BUILD

RUN USER=root cargo new --bin travel-bot-rs
WORKDIR /travel-bot-rs

# cache dependencies
COPY ./Cargo.toml ./Cargo.toml
COPY ./Cargo.lock ./Cargo.lock

RUN cargo build --release
RUN rm src/*.rs

# build release
COPY ./src ./src

RUN cd target

RUN rm ./target/release/deps/travel_bot_rs*
RUN cargo build --release

FROM debian:bookworm-slim

RUN apt update
RUN apt install -y --no-install-recommends ca-certificates
RUN update-ca-certificates

# copy the build artifact from the build stage
COPY --from=build /travel-bot-rs/target/release/travel-bot-rs .

# set the startup command to run your binary
CMD ["./travel-bot-rs"]