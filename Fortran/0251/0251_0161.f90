module m1
contains

function f1(n,dd)
integer :: n
integer :: dd
integer :: f1
n=n+1
block
character(len=n) :: ch
integer :: dd(n)
if(len(ch) == 23) print*,'pass'
if(size(dd)/=23) print*,102
dd=4
ch='hello'
if(ch/='hello') print*,101
if(any(dd/=4)) print*,103
end block

f1=2
print*,'finish',dd
end function
end module
 
use m1
implicit none
integer::a=22
if(f1(a,3)/=2) print*,201
end
