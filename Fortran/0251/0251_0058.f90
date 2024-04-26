integer :: ii

block
interface
function ff()
integer :: ff
end function
end interface

ii=ff()
if(ii/=3) print*,101
end block

ii=2
if(ii/=2) print*,103

block
interface
function ff()
integer :: ff
end function
end interface

ii=ff()
if(ii/=3) print*,102
print*,"pass"
end block
end

function ff()
integer :: ff
ff=3
end function
