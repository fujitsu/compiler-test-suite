interface
integer function fun(dmy)
integer,pointer,intent(in)::dmy
end function
end interface
call sub
contains
subroutine sub
integer,target::tar
ii=fun(tar)
if (tar /= 10) print*,"error",102
if(ii==10)print*,"Pass"
end subroutine
end

integer function fun(ptr)
integer,pointer,intent(in)::ptr
if(.NOT.associated(ptr))print*,"error",101
ptr = 10
fun=ptr
end function
