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
type,EXTENDS(ext) :: ext1
  integer :: k 
end type
type (base),parameter :: aa = base(2)
type (ext),parameter  :: bb = ext(aa,3)
type (ext1)  :: cc = ext1(bb,4)
print *, bb%base
if ( 2 .ne. bb%base%i ) print *,'fail'
if ( 2 .ne. bb%i ) print *,'fail'
if ( 3 .ne. bb%j ) print *,'fail'
print *, cc%ext
if ( 2 .ne. cc%ext%i ) print *,'fail'
if ( 3 .ne. cc%ext%j ) print *,'fail'
if ( 2 .ne. cc%i ) print *,'fail'
if ( 3 .ne. cc%j ) print *,'fail'
if ( 4 .ne. cc%k ) print *,'fail'
print *,'pass '
end
