# travel-bot-rs

Now it is a dice bot.

## Requirements:
Docker

## How to run bot
Before you need to clone the repository and compile it, so do like this:

```sh
git clone https://github.com/ivan0sokin/travel-bot-rs.git
cd travel-bot-rs
docker build -t travel-bot-rs .
```

Then you need to change file ```.env.sample``` to ```.env``` and enter your bot token. \
After that type:

```sh
docker-compose up
```