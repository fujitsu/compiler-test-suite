  integer ::a(3,2)=reshape((/1,2,3,4,5,6/),(/3,2/))
  integer ::ax(2,3)
  integer ::v2(2)=(/1,2/),v3(3)=(/1,2,3/)

i3=3;i2=2
ax = transpose(a(v3,v2))
if(any((/ax/)/=(/1,4,2,5,3,6/)))print *,'error-1'
ax=0
if(any((/ax/)/=0))print *,'error-2'
ax = transpose(a(v3(1:i3),1:i2))
if(any((/ax/)/=(/1,4,2,5,3,6/)))print *,'error-2'
call chk1(transpose(a(v3,v2)))
call chk1(transpose(a(v3(1:i3),1:i2)))
call chk2(transpose(a(v3,v2)))
call chk2(transpose(a(v3(1:i3),1:i2)))
print *,'pass'
contains
subroutine chk2(x)
integer::x(:,:)
if(any((/x/)/=(/1,4,2,5,3,6/)))write(6,*) "NG"
end subroutine
end
subroutine chk1(x)
integer::x(6)
if(any(x/=(/1,4,2,5,3,6/)))write(6,*) "NG"
end
