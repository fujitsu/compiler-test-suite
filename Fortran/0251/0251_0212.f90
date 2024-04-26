interface
function fun(dum)
integer :: dum,fun
end function
end interface
block
procedure(fun)::d1
if(d1(1)==1) print*,'pass'
end block
end

function d1(dum)
integer::dum,d1
d1=dum
end function

