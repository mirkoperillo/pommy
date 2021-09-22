Pommy is a test, but working project to investigate about vala lang.

It is a simple activity timer implemented as a GTK AppIndicators.


## Build

To build the program you need following package installed on your system:

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
