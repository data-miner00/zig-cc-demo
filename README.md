# zig-cc-demo

Zig is more than just a programming language. It is also a build tool for C/C++ and Zig itself.

This is a quick demo to compile C with `build.zig` with Zig 0.13.0.

## Embedded C/C++ compiler

Zig provides a drop-in replacement for gcc to compile C codes.

```
gcc -o main.o main.c
```

```
zig cc -o main.o main.c
```

Same goes to C++.

```
zig c++ -o main.o main.cpp
```

## Using a build definition

The compilation instructions can be specified in the `build.zig` file for complex scenarios. It essentially replaces `Makefile`.

```
zig build
```

The artifacts can be found at `./zig-out/bin/myapp.exe` (for Windows).

Run the executable as usual.

```
> ./zig-out/bin/myapp.exe
PI is approximately 3.14159
```

## Credits

- [WTF is Build.Zig? by Ed Yu](https://www.youtube.com/watch?v=-XLSyaJ6m3o)
- [Make Zig Your C/C++ Build System](https://zig.news/kristoff/make-zig-your-c-c-build-system-28g5)

