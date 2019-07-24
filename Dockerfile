FROM unixdevelopment/archlinux

RUN yes | sudo pacman -Syu
RUN pip install githubrelease
