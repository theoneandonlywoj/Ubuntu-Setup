#!/bin/bash -i
sudo apt-get install make libncurses5-dev g++ -y

asdf plugin-add erlang
asdf plugin-add elixir

ERLANG_VERSION=26.1.1
ELIXIR_VERSION=1.16.2-otp-26

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

echo "--------------------"
echo "Installing Erlang:"
echo "--------------------"
asdf install erlang $ERLANG_VERSION

echo "--------------------"
echo "Installing Elixir:"
echo "--------------------"
asdf install elixir $ELIXIR_VERSION

asdf global erlang $ERLANG_VERSION
asdf global elixir $ELIXIR_VERSION

echo "--------------------"
echo "Elixir:"
echo "--------------------"
elixir --version

echo "--------------------"
echo "Hex and Rebar:"
echo "--------------------"
mix local.hex --force
mix local.rebar

echo "--------------------"
echo "Phoenix:"
echo "--------------------"
mix archive.install hex phx_new --force



