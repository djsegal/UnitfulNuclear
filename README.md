# UnitfulNuclear

[![Build Status](https://travis-ci.org/djsegal/UnitfulNuclear.jl.svg?branch=master)](https://travis-ci.org/djsegal/UnitfulNuclear.jl) [![codecov.io](http://codecov.io/github/djsegal/UnitfulNuclear.jl/coverage.svg?branch=master)](http://codecov.io/github/djsegal/UnitfulNuclear.jl?branch=master)

## Usage

```julia

amu = 1u"u" 

uconvert(u"kg", amu) # => 1.66054e-27u"kg" )

n_bar = 1u"n20"

uconvert(u"m^-3", n_bar) # => 1e20u"m^-3"

sigma = 1u"b"

uconvert(u"cm^2", sigma) # => 1e-24u"cm^2"
```
