module mod
type base
  integer :: i
endtype
end module mod

module mod1
use mod
type,EXTENDS(base) :: ext
  integer :: j 
end type
end module mod1

use mod1
type (base),parameter :: aa = base(2)
type (ext)  :: bb = ext(aa,3)
print *, bb%base
if ( 2 .ne. bb%base%i ) print *,'fail'
if ( 2 .ne. bb%i ) print *,'fail'
if ( 3 .ne. bb%j ) print *,'fail'
print *,'pass '
end
