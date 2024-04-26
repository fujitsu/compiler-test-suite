interface
function sub(x1,x2)
integer :: sub,x1,x2
end function
end interface

procedure(sub)::d1
print*,ss(d1)

contains
function ss(dmy)
character(7)::ss
procedure(sub) :: dmy
ss='fail'
block
if(dmy(2,3) == 5) ss='pass'
end block
end function
end

function d1(x1,x2)
integer :: d1,x1,x2
d1=x1+x2
end function

