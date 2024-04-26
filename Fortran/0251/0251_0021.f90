interface
function ff(d)
integer::d
character(4) :: ff
end function
end interface

block
integer,allocatable :: pp
allocate(pp)
pp=2
if(pp/=2) print*,101
end block

print*,ff(2)
end

function ff(d)
implicit none
integer :: d
character(4) :: ff
Block
Integer,allocatable :: pp(:)
allocate(pp(d))
pp=0
pp=pp+1
ff='fail'
if(all(pp==1) .and. size(pp)== 2) ff='pass'
End block

end function


