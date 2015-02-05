FROM ubuntu:latest
MAINTAINER Andreas Simon <coding@andreas-simon.info>

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb /tmp/erlang-solutions.deb
RUN dpkg --install /tmp/erlang-solutions.deb
RUN apt-get update
RUN apt-get install --yes erlang-base
