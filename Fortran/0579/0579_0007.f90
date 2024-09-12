interface
function f(d)
integer :: f,d
end function
end interface
procedure(f),pointer :: test
type ty
procedure(test),pointer,nopass:: prc_ptr
end type
type(ty) :: obj
obj%prc_ptr=>f
if(obj%prc_ptr(2) .ne. 3)print*,"101"
print*,'pass'
end
    
function f(d)
integer :: f,d
f=d+1
end function

