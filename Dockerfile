FROM archlinux/base

RUN chmod 577 /etc/pacman.conf
RUN echo "Server = https://mirrors.kernel.org/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN yes | pacman -Syu pacman-mirrorlist
RUN yes | pacman -Syu
RUN yes | pacman -S python python-pip git openssh rsync awk binutils fakeroot awk sudo
RUN pip install PyYAML
