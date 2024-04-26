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
Integer,allocatable :: pp,qq,ww
allocate(pp,qq)
allocate(ww)
pp=0
qq=2
ww=3
pp=pp+1
ff='fail'
if(pp==1 .and. qq==2 .and. ww==3) ff='pass'
End block

end function


