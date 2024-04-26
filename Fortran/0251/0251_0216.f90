module m1
integer,save::i=0
end module

use m1

interface 
function fun1()
character(7) :: fun1
end function

function fun2()
character(7) :: fun2
end function
end interface

procedure(fun1):: d1
character(7) :: ch
integer :: ii
ch = d1()
print*,ch
ii = fun(fun2)
print*,ii

contains

function fun(d2)
integer::fun
procedure(fun2)::d2
block
procedure(fun2):: d3
print*,d3()
if(i/=4) print*,101,i
end block
print*,d2()
if(i/=2) print*,102,i
fun=1
end function
end 

function d1()
use m1
character(7) :: d1
i=2
d1='pass1/3'
end function

function d3()
use m1
character(7) :: d3
i=4
d3='pass3/3'
end function

function fun2()
use m1
character(7) :: fun2
i=2
fun2='pass2/3'
end function
