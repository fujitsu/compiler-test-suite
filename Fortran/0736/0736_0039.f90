 integer  ,dimension(2)::b11v,b12v
 integer  ,dimension(2,1,1,1,1,1,2)::b11w
b11v=(/1,2/)
b12v=(/3,4/)
b11w=reshape((/5,6,7,8/),(/2,1,1,1,1,1,2/))
call  x(b11v,b12v,b11w)
call chk
print *,'pass'
contains
subroutine x(b11v,b12v,b11w)
 integer  ,dimension(:)::b11v,b12v
 integer  ,dimension(:,:,:,:,:,:,:)::b11w
   write(1,*)dot_product(b11v(:),b12v(:))+b11w
 end subroutine
 end
subroutine chk
rewind 1
read(1,*) i1,i2,i3,i4
if (any((/i1,i2,i3,i4/)/=(/16,17,18,19/)))write(6,*) "NG" 
end
