FROM ghcr.io/void-linux/void-linux:latest-full-x86_64

LABEL com.github.containers.toolbox="true"

RUN xbps-install -Suy xbps
RUN xbps-install -Suy
RUN xbps-install -Sy bash sudo libcap-progs ncurses

RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/toolbox
