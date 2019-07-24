FROM unixdevelopment/archlinux

RUN yes | sudo pacman -Syu
RUN yes | sudo pacman -S go
RUN go get github.com/aktau/github-release
