FROM elixir:1.13

ENV MIX_ENV=dev

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential
RUN apt-get install -y inotify-tools

WORKDIR /app

RUN mix do local.hex --force, local.rebar --force

COPY mix.* ./
RUN mix deps.get
RUN mix deps.compile

COPY . .


CMD mix ecto.create && mix phx.server

