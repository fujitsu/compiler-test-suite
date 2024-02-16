integer :: yy = 0
call pro(yy)
if(yy /= 1) print *,101
print *,"Pass"
contains
subroutine pro(x)
integer :: x
x = 1
end 
end
