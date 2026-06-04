module mod
contains
function sss()
block
interface ccc
procedure eee
end interface
end block
end
function eee()
end
end
use mod
interface ccc
procedure ddd,bbb
end interface
block
interface aaa
procedure bbb
end interface
end block
if(ccc(i)/=-1) print *,'err'
print *,'sngtin27:pass'
contains
integer function ddd(i)
i=-1
ddd=i
end function ddd
real function bbb()
end function bbb
end
