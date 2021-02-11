#lang scribble/manual
@require[@for-label[wy-posn-util
                    racket/base 2htdp/image lang/posn]]

@title{WY Posn Util}
@author{Andrew Mauer-Oats}

@defmodule[wy-posn-util]

This package implements a stack of functions for working with @racket{posn}s.

@defproc[(posn=? [p posn?] [q posn?])
        boolean?]{
True when two posns have the same coordinates.
}

@defproc[(posn-add [p posn?] [q posn?])
        posn?]{
	Sum each coordinate separately.
	}

@defproc[(posn-subtract [p posn?] [q posn?])
        posn?]{
	Coordinates of @racket[p] minus the coordinates of @racket[q].
	}

@defproc[(posn-scale [k number?] [p posn?])
        posn?]{
	Multiply each coordinate of @racket[p] by the same number @racket[k].
	}

@defproc[(posn-distance [p posn?] [q posn?])
        nonnegative-real?]{
	The Euclidean distance between the points specified by @racket[p] and @racket[q].
	}

@defproc[(place-image/posn [img image?] [pt posn?] [bg image?]) image?]{
Place @racket[img] at the coordinates specified by @racket[pt] on the @racket[bg] image.
}

@defproc[(posn-length [p posn?]) nonnegative-real?]{
The length of the vector @racket[p].
}

@defproc[(posn-length-squared [p posn?]) nonnegative-real?]{
The square of the length of the vector @racket[p]. This will be an integer if the coordinates of @racket[p] are integers.
}

@defproc[(posn-within? [p posn?] [q posn?] [eps real?]) boolean?]{
True if each of the corresponding components of @racket[p] and @racket[q] are within @racket[eps] of each other.
}

@defproc[(posn-unit [p posn?]) posn?]{The posn @racket[p] rescaled so it is of unit length.}

@defproc[(posn-dot [p posn?] [q posn?]) real?]{The dot product.}
@defproc[(posn-projection [p posn?] [q posn?]) real?]{The projection of @racket[p] on @racket[q]. This is the length of the shadow of @racket[p] on @racket[q] when the sun shines perpendicular to @racket[q].}

@defproc[(posn-angle-between-rad [p posn?] [q posn?]) real?]{The angle between the vectors, in radians. Uses @racket[acos].}
@defproc[(posn-angle-between-deg [p posn?] [q posn?]) real?]{The angle between the vectors, in degrees. Uses @racket[acos].}

@defproc[(xy->polar [p posn?]) posn?]{Convert from rectangular to polar representation (radius, angle).}
@defproc[(polar->xy [q posn?]) posn?]{Convert from polar representation (radius, angle) to rectangular (x,y).}
