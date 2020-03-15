## CSE 130 Spring 20 Final Exam

The exam is split into **three problems** each in its own file inside `src/`. 
(The `Factorial.hs` is a dummy example file.)

1. [Type Checker for Nano](src/TypeCheck.hs) 
2. [Radix Trees](src/Radix.hs) 
3. [Elsa](src/Elsa.hs)

To complete the final, edit the three above files to fill in the solutions.
Work on each problem separately by suitably editing the respective files, 
reloading in GHCi, testing etc.

- **You may** edit existing functions _without_ changing their type signatures; 
- **You may** write any new/extra helper functions or testing code; 
- **You must not** modify or edit the existing documentation/comments.

## Building

To make sure your code compiles, you can reload in GHCi or run 

```
$ make
```

You can also run 

```
$ make cont
```

in a separate window to **automatically recompile** the code after every edit.


## Testing

For each problem we have given illustrative tests as "doctest comments" 
comments of the form:

```haskell
-- >>> factorial 5
-- 120
```

### Manual Testing 

To make sure your code is working, you can load the file in GHCi and run 
that test, e.g. by doing:

```
$ make ghci
stack --allow-different-user exec -- ghci -XOverloadedStrings
GHCi, version 8.6.3: http://www.haskell.org/ghc/  :? for help
Prelude> :l src/Factorial.hs
[1 of 1] Compiling TypeCheck        ( src/Factorial.hs, interpreted )
Ok, one module loaded.
*Factorial> Factorial 5
120
```

### Automated Testing 

You can also run *all* the tests by doing (on the lab machines)

```
$ make test
```

If all the tests pass you should see something like

```
doctest src/*.hs
Examples: 45  Tried: 45  Errors: 0  Failures: 0
```

Otherwise, you will see a description of which test(s) failed.

### Installing 

If you are running this at home, you need to first install `doctest`

```
$ stack install doctest
```
