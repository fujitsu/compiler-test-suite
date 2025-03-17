module mdef
type x
 integer scalar
 integer array(2)
end type
contains
elemental type(x) function func(ta)
 type (x),intent(in)::ta
 func%scalar= ta%scalar
 func%array = ta%array + 1
end function
end module

use mdef

 type (x)::ta(2)
 ta(1)%scalar  = 1
 ta(1)%array   = 1
 ta(2)%scalar  = 1
 ta(2)%array   = 1

 ta=func(ta)

if ( ta(1)%scalar  == 1 .and. ta(1)%array(1) == 2 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ta(1)
 print *,ta(2)
endif
end

