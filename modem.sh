#!/bin/bash
split -b 50M ../../../vendor/nothing/Spacewar/radio/modem.img ../../../vendor/nothing/Spacewar/radio/modem.img.part_
cat ../../../vendor/nothing/Spacewar/radio/modem.img.part_* > ../../../vendor/nothing/Spacewar/radio/modem.img
