FROM archlinux/base

RUN chmod 577 /etc/pacman.conf
RUN echo "Server = https://mirrors.kernel.org/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
RUN yes | pacman -Syu pacman-mirrorlist
RUN yes | pacman -Syu
RUN yes | pacman -S python python-pip git openssh rsync awk binutils fakeroot awk
RUN pip install PyYAML
