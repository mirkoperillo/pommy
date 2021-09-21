#!/bin/bash

valac --pkg gtk+-3.0 --pkg appindicator3-0.1 --pkg libnotify pommy.vala && ./pommy 1 "Fermati!!"
