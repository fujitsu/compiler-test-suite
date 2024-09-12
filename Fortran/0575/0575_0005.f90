procedure(f1),pointer :: ptr
integer :: r
ptr=>f1
r=fun(ptr)
if(associated(ptr) .eqv. .false.)print*,"101",r
contains
function f1(d)
integer :: d
f1=d+1
end function
end

function fun(proc)
interface 
function f1(d)
integer :: d
end function
end interface
procedure(f1):: proc
fun=proc(7)
if (fun .ne. 8)print*,"102"
print*,"pass"
end function
