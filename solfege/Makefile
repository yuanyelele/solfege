# vim: set noexpandtab:
#
# GNU Solfege - free ear training software
# Copyright (C) 2000, 2001, 2002, 2003, 2004, 2007, 2008, 2011  Tom Cato Amundsen
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

installfiles += $(wildcard solfege/*.py) \
				$(wildcard solfege/exercises/*.py)
dist_files += $(wildcard solfege/*.py) \
	$(wildcard solfege/exercises/*.py) \
	$(wildcard solfege/tests/*.py) \
	solfege/Makefile solfege/buildinfo.py.in

clean-files += $(wildcard solfege/*.py[co] \
                          solfege/exercises/*.py[co] \
                          solfege/tests/*.py[co])

include solfege/mpd/Makefile
include solfege/soundcard/Makefile
