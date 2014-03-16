GhostscriptiOS
==============

iOS static library for Ghostscript


The code is under GNU AGPL licence whose complete text can be found here http://www.gnu.org/licenses/agpl-3.0.html

First some version details:

Ghostscript version: 9.10

CPU Type: armv7 (can be modified easily)

iOS Version: 7.0 (can be modified easily)


Download the 9.10 ghostscript. Keep the iOS directory and other executable at same level as code and copy the build script inside ghostscript-9.10. Run build script from that location and it would generate arch specific and combined universal static library.


More explanation can be found here: http://www.labs.saachitech.com/2014/03/16/ghostscript-ios-static-library/