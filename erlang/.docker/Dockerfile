FROM ubuntu:latest
MAINTAINER Andreas Simon <coding@andreas-simon.info>

ADD http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb /tmp/erlang-solutions.deb
RUN dpkg --install /tmp/erlang-solutions.deb
RUN apt-get update
RUN apt-get install --yes erlang-base
