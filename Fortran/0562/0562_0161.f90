interface
integer function fun(ptr)
integer,pointer,intent(in)::ptr(:,:)
end function
end interface

integer,target::tar(4,4)
tar = 0
call sub
contains
subroutine sub
integer::ii
ii=fun(tar(2:4,1:3))
if (tar(1,1) /= 0)print*,105
if (tar(2,1) /= 5)print*,106
if (tar(3,2) /= 35)print*,107
if(ii==10)print*,"Pass" 
end subroutine
end

integer function fun(ptr)
integer,pointer,intent(in)::ptr(:,:)
if(.NOT.associated(ptr))print*,"error",101
if (size(ptr) /= 9)print*,102
if (LBOUND(ptr,1) /=1 .AND. LBOUND(ptr,2)/=1)print*,103
if (UBOUND(ptr,1) /=3 .AND. UBOUND(ptr,2)/=3)print*,104
ptr = RESHAPE((/5,10,15,25,35,45,55,65,75/),(/3,3/))
fun=10
end function

