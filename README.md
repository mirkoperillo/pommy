Pommy is a test, but working project to investigate about vala lang.

It is a simple activity timer implemented as a GTK AppIndicators.


## Build

To build the program you need following package installed on your system:

* libgtk-3-dev
* libappindicator3-dev
* libnotify-dev


Then run `build.sh`


## Usage

Copy stopwatch.svg icon in `/usr/share/pommy` folder

```
pommy DURATION_IN_MINUTES <OPTIONAL_MESSAGE>
```

Example

```
pommy 25 "BREAK"
```


