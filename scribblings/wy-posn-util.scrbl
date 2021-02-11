#lang scribble/manual
@require[@for-label[wy-posn-util
                    racket/base]]

@title{wy-posn-util}
@author{Andrew Mauer-Oats}

@defmodule[wy-posn-util]

This package implements a stack of functions for working with @racket{posn}s.

@defproc[(posn=? [p posn?] [q posn?])
        boolean?]{
True when two posns have the same coordinates.
}

