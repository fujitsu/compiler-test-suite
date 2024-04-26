integer :: ii

block
interface gnr
function ff()
integer :: ff
end function
end interface

ii=gnr()
if(ii/=3) print*,101
end block

ii=2
if(ii/=2) print*,103

block
interface gnr
function ff2()
integer :: ff2
end function
end interface

ii=gnr()
if(ii/=33) print*,102
print*,"pass"
end block
end

function ff()
integer :: ff
ff=3
end function

function ff2()
integer :: ff2
ff2=33
end function
