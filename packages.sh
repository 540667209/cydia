#!/bin/bash
#dpkg-deb -bZgzip projects/<packagename> <output folder>
dpkg-deb -bZgzip projects/iosreprojects debs
dpkg-deb -bZgzip projects/Bicon debs


