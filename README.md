Pommy is a project to investigate about Vala.

It's a simple activity timer implemented as a GTK app indicator.

![pommy screenshot](screenshot.png?raw=true)

## Build

To build the application you need the following packages installed on your system:

* libgtk-3-dev
* libappindicator3-dev
* libnotify-dev


Then run `build.sh`


## Usage

1. Build sources or copy `dist/pommy` on your pc.
2. Copy `icons/stopwatch.svg` icon in `/usr/share/pommy` folder

```
pommy DURATION_IN_MINUTES <OPTIONAL_MESSAGE>
```

Example

```
pommy 25 "BREAK"
```

## License

Pommy is released under GPLv3 license.
