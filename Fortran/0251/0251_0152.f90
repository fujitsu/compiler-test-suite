implicit none
integer::i=22
call s1(i,3)

contains

subroutine s1(n,dd)
integer :: n
integer :: dd
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

print*,'finish',dd
end subroutine
end
