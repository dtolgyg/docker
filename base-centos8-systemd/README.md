# Build the image
docker build -t centos-systemd:8 .
# Test functionality by running the container in the background
docker run --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d --name systemd-test centos-systemd:8
