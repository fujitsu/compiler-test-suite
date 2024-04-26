module m1
       interface
          type(integer(4))  function f(a)
            type(integer(kind=4))::  a
          end function
       end interface
end

use m1
call s2(f)
contains
subroutine s2(ff)
procedure(type(integer*4))::ff
type(integer*4)::res,inp=22
res=ff(inp)
if(res/=inp)print*,101,res
print*,'Pass'
end subroutine
end

type(integer(4))  function f(a)
type(integer)::  a

if(a/=22)print*,100,a
f=a
end function

