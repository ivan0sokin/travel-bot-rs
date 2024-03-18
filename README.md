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

And then run it with desired port and your Telegram bot token:

```sh
docker run -d -e TELOXIDE_TOKEN={TOKEN} travel-bot-rs
```

If you want to see some logs you can run it not detached (i.e. without ```-d```) and add ```-e RUST_LOG=trace``` option.