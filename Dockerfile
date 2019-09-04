FROM archlinux/base

RUN chmod 577 /etc/pacman.conf
RUN yes | pacman -Syu
RUN yes | pacman -S python python-pip git
RUN pip install PyYAML
