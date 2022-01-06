# zxdev
Simple Docker container to cross-compile ZX Spectrum code.

Based on the [z88dk](https://github.com/z88dk/z88dk) nightlies, with added [pasmo](https://pasmo.speccy.org/) and [zmakebas](https://github.com/markround/zmakebas) patched to handle Spectrant extensions.

# Example usage

```
docker run -ti -v $PWD:/src --user $(id -u):$(id -g) markdr/zxdev \
  pasmo --tap example.asm example.tap
```

# Other information

See my [blog](https://markround.com/blog) and [spectrum projects](https://markround.com/spectrum) for more information on my development environment and things I've built.
