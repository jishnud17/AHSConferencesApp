#!/bin/bash
# Copyright (C) 2023 Ryan Hallock, Muqadam Sabir, David Ben-Yaakov
# This program was developed using codermerlin.academy resources.
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see https://www.gnu.org/licenses/.

# Script for running on CoderMerlin

# Stop on error and undefined variables
set -eu

# Some limits will need to be increased in order to successfully run:
ulimit -n 8192
ulimit -u 256
ulimit -v 67108864
ulimit -t 1200

export PORT=$IGIS_LOCAL_PORT
export PUBLIC_URL="https://codermerlin.academy/igis/$USER"
export REACT_APP_USER=$USER

# Build
npm run build

# Running the app - Node, this is a temporary solution. It should eventually be replaced by hosting on the backend.
node app.js