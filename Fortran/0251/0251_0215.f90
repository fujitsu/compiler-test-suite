interface
function ff()
character(4) :: ff
end function
end interface

print*,ff()
end


function ff()
character(4) :: ff
interface
function fun(dum)
integer :: dum,fun
end function
end interface
ff='fail'
block
procedure(fun)::d1
if(d1(1)==1) ff='pass'
end block
end function

function d1(dum)
integer::dum,d1
d1=dum
end function

