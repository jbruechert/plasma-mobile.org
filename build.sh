#!/bin/bash

pluto update planet.ini
ruby -r 'jekyll/planet' -e 'JekyllPlanet.main'
jekyll build
