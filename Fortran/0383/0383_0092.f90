module mod
type base
  integer :: i
endtype
type,EXTENDS(base) :: ext
  integer :: j 
end type
end module

use mod
type (base),parameter :: aa = base(2)
type (ext)  :: bb = ext(aa,3)
bb%i=4
if ( 2 .ne. aa%i ) print *,'fail'
print *, bb%base
if ( 4 .ne. bb%base%i ) print *,'fail'
if ( 4 .ne. bb%i ) print *,'fail'
if ( 3 .ne. bb%j ) print *,'fail'
print *,'pass '
end
