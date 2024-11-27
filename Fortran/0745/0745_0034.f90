module m
  integer ::r(2,3)=reshape((/1,4,2,5,3,6/),(/2,3/))
end
use m
type ty1
  integer a(3,2)
end type
type (ty1) :: str1(1)
integer ::ax(2,3)
integer::v2(2)=(/1,2/),v3(3)=(/1,2,3/)
integer,pointer::w2(:),w3(:)
i1=1;i2=2;i3=3
str1(1)%a=reshape((/1,2,3,4,5,6/),(/3,2/))
allocate(w2(2),w3(3))
w2=v2;w3=v3
ax = transpose(str1(1)%a)
call chk1(transpose(str1(1)%a))
call chk2(transpose(str1(1)%a))
if(any(ax/=r))print *,'error'
ax = transpose(str1(i1)%a)
call chk1(transpose(str1(i1)%a))
call chk2(transpose(str1(i1)%a))
if(any(ax/=r))print *,'error'
ax = transpose(str1(1)%a(v3,v2))
call chk1(transpose(str1(1)%a(v3,v2)))
call chk2(transpose(str1(1)%a(v3,v2)))
if(any(ax/=r))print *,'error'
ax = transpose(str1(i1)%a(v3,v2))
call chk1(transpose(str1(i1)%a(v3,v2)))
call chk2(transpose(str1(i1)%a(v3,v2)))
if(any(ax/=r))print *,'error'
ax = transpose(str1(1)%a(w3,w2))
call chk1(transpose(str1(1)%a(w3,w2)))
call chk2(transpose(str1(1)%a(w3,w2)))
if(any(ax/=r))print *,'error'
ax = transpose(str1(i1)%a(w3,w2))
call chk1(transpose(str1(i1)%a(w3,w2)))
call chk2(transpose(str1(i1)%a(w3,w2)))
if(any(ax/=r))print *,'error'
ax = transpose(str1(1)%a(i1:i3,i1:i2))
call chk1(transpose(str1(1)%a(i1:i3,i1:i2)))
call chk2(transpose(str1(1)%a(i1:i3,i1:i2)))
if(any(ax/=r))print *,'error'
ax = transpose(str1(i1)%a)
call chk1(transpose(str1(i1)%a(i1:i3,i1:i2)))
call chk2(transpose(str1(i1)%a(i1:i3,i1:i2)))
if(any(ax/=r))print *,'error'
ax = transpose(str1(1)%a(v3(i1:i3:i2-i1),v2(i1:i2:i3-i2)))
call chk1(transpose(str1(1)%a(v3(i1:i3:i2-i1),v2(i1:i2:i3-i2))))
call chk2(transpose(str1(1)%a(v3(i1:i3:i2-i1),v2(i1:i2:i3-i2))))
if(any(ax/=r))print *,'error'
ax = transpose(str1(i1)%a(v3(i1:i3:i2-i1),v2(i1:i2:i3-i2)))
call chk1(transpose(str1(i1)%a(v3(i1:i3:i2-i1),v2(i1:i2:i3-i2))))
call chk2(transpose(str1(i1)%a(v3(i1:i3:i2-i1),v2(i1:i2:i3-i2))))
if(any(ax/=r))print *,'error'
ax = transpose(str1(1)%a(w3(i1:i3:i2-i1),w2(i1:i2:i3-i2)))
call chk1(transpose(str1(1)%a(w3(i1:i3:i2-i1),w2(i1:i2:i3-i2))))
call chk2(transpose(str1(1)%a(w3(i1:i3:i2-i1),w2(i1:i2:i3-i2))))
if(any(ax/=r))print *,'error'
ax = transpose(str1(i1)%a(w3(i1:i3:i2-i1),w2(i1:i2:i3-i2)))
call chk1(transpose(str1(i1)%a(w3(i1:i3:i2-i1),w2(i1:i2:i3-i2))))
call chk2(transpose(str1(i1)%a(w3(i1:i3:i2-i1),w2(i1:i2:i3-i2))))
if(any(ax/=r))print *,'error'
print *,'pass'
contains
subroutine chk1(x)
integer::x(:,:)
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if(any(ax/=r))write(6,*) "NG"
end subroutine
end
subroutine chk2(x)
use m
integer::x(2,3)
if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
if(any(x/=r))write(6,*) "NG"
end subroutine
