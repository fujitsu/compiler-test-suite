module mod1

interface  
function abs1()
integer :: abs1
end function 
end interface

type,abstract :: base
integer :: jj
contains
procedure(abs1),deferred,NOPASS :: prc
end type

type,extends(base) :: deriv
integer :: kk
contains
procedure,NOPASS :: prc=>fun1
end type

contains
function fun1()
integer :: fun1
fun1 = 10 
end function
end module

use mod1
class(base) , pointer ::baseptr 
type(deriv), target :: obj
integer :: ii
baseptr=>obj
ii = baseptr%prc()
ii = abs1()
if(baseptr%prc() .NE. 10) print*,"Err 1"
print*,"Pass"

ii=ii+10
end

function abs1()
integer :: abs1
abs1=20
end function 
