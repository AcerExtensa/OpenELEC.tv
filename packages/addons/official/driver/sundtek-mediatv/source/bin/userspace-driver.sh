#!/bin/sh
################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2017 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

. /etc/profile

SUNDTEK_ADDON_DIR="$HOME/.kodi/addons/driver.dvb.sundtek-mediatv"

if [ -f $SUNDTEK_ADDON_DIR/lib/libmediaclient.so ]; then
  logger -t Sundtek "### Preloading library ###"
  export LD_PRELOAD=$SUNDTEK_ADDON_DIR/lib/libmediaclient.so
else
  logger -t Sundtek "### Preloading library doesn't exist ###"
fi
