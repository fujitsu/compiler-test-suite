program main
integer::ii
character(LEN=20),target::tar(4)
tar(2)="fortran"
ii=fun(tar(2))
if(ii==10)print*,"Pass" 
contains
integer function fun(ptr)
character(LEN=*),pointer,intent(in)::ptr
if(.NOT.associated(ptr))print*,"error",101
if (tar(2) /= "fortran")print*,"error",102
if (LEN(ptr) /= 20)print*,103
fun=10
end function
end
