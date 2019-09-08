FROM archlinux/base

RUN chmod 577 /etc/pacman.conf
RUN echo "Server = https://mirrors.kernel.org/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN yes | pacman -Syu
RUN pacman -S --needed --noprogressbar --noconfirm \
	awk \
	base-devel \
	bash \
	binutils \
	bzip2 \
	coreutils \
	device-mapper \
	dhcpcd \
	fakeroot \
	gcc-libs \
	git \
	glibc \
	grep \
	gzip \
	inetutils \
	iproute2 \
	iputils \
	less \
	libutil-linux \
	logrotate \
	openssh \
	patch \
	psmisc \
	python \
	python-pip \
	rsync \
	sed \
	shadow \
	sudo \
	sysfsutils \
	systemd-sysvcompat \
	tar \
	texinfo \
	util-linux \
	which
RUN pip install PyYAML
