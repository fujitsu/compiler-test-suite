interface
function ff()
character(4) :: ff
end function
end interface

print*,ff()
end

function ff()
implicit none
character(4) :: ff
Block
Integer,allocatable :: pp(:)
allocate(pp(2))
pp=0
pp=pp+1
ff='fail'
if(all(pp==1) .and. size(pp)== 2) ff='pass'
End block

end function


