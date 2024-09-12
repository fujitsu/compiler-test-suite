subroutine sub(dd)
intrinsic :: TAN
real :: dd
if (fun(TAN,dd)/=1.5574077)print*,101,fun(TAN,dd)
contains
real function fun(dmy1,dmy2)
procedure(TAN),pointer,intent(in)::dmy1
real :: dmy2
if (.not.associated(dmy1))print*,102
fun = dmy1(dmy2)
end function
end subroutine

real :: r1
r1 = 1.0 
call sub(r1)
print*,"Pass"
end
