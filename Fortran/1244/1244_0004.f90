module mod
interface aaa
procedure bbb
end interface
contains
subroutine bbb(i)
integer::i(:)
i=-1
end subroutine bbb
end
use mod
integer::i(1),j(1)
interface ccc
procedure ddd
end interface

call aaa(i)
call ccc(j)
if(any(i/=j)) print *,'pass'
print *,'sngtin06:pass'
contains
subroutine ddd(j)
integer::j(:)
j=-1
end subroutine ddd
end
