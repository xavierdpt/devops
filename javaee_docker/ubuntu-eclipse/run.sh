#!/bin/bash
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v `readlink -f ../sample_projects`:/home/user/projects xavierdpt/eclipse
