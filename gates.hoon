:: confirm whether a value is greater than one
=/  a  5
?:  (gth a 1)
  'yes'
'no'

::  Return which of two numbers is larger.
|=  [a=@ud b=@ud]
?:  (gth a b)
  a
b

:: Produce a gate which accepts any @ unsigned integer value and converts it to the @p equivalent.
=myship |=(a=@ (`@p`a)) :: does not work

=myship [a=@]
^-  @p  a

:: Produce a gate which accepts any @ unsigned integer value and calculates the next neighbor (the @p of the number plus one).

=myneighbor |= [a=@]
`@p`%-(add [a 1])

=myneighbor |= q[a=@]
^-  @p  a

:: Produce a gate which accepts a @p ship name and produces the @ux unsigned hexadecimal integer value of the ship

=mynumber |=  a=@p
^-  @ux  @  a

=mynumber |=  a=@p
^-  @ux  `@`a

