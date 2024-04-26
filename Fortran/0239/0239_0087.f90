subroutine s1(n1,n4,n5)
type x
integer x1
integer,pointer,dimension(:,:) ::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v(1,4,5)

allocate (v(n1,n5-n1,n4+1)%y2%a(n5,n4),stat=kkk)
v(n1,n5-n1,n4+1)%y2%a=1
allocate (v(n1,n5-n1,n4+1)%y2%b,source=v(n1,n5-n1,n4+1)%y2%a,stat=kkk)
allocate (v(n1,n5-n1,n4+1)%y2%c,source=v(n1,n5-n1,n4+1)%y2%b,stat=kkk)

v(n1,n5-n1,n4+1)%y2%b=2
n2=2;n3=3
do k2=1,3
do k1=1,4
 v(n1,n5-n1,n4+1)%y2%a(k1+1,k2+1)=v(n1,n5-n1,n4+1)%y2%a(k1,k2)+v(n1,n5-n1,n4+1)%y2%b(k1,k2)
end do
end do
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,100
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
do k2=1,3
do k1=1,4
associate( p=>v(n1,n5-n1,n4+1)%y2%a,w=>v(n1,n5-n1,n4+1)%y2%a)
 w(k1+1,k2+1)=p(k1,k2)+v(n1,n5-n1,n4+1)%y2%b(k1,k2)
end associate
end do
end do
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,101
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a,w=>v(n1,n5-n1,n4+1)%y2%a)
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v(n1,n5-n1,n4+1)%y2%b(k1,k2)
end do
end do
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,102
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
do k2=1,3
do k1=1,4
associate( p=>v(n1,n5-n1,n4+1)%y2%a(k1,k2),w=>v(n1,n5-n1,n4+1)%y2%a)
 w(k1+1,k2+1)=p+v(n1,n5-n1,n4+1)%y2%b(k1,k2)
end associate
end do
end do
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,103
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a,w=>v(n1,n5-n1,n4+1)%y2%a)
 w(n2:n5,n2:n4)=p(:n4,:n3)+v(n1,n5-n1,n4+1)%y2%b(:n4,:n3)
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,104
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a(:,:),w=>v(n1,n5-n1,n4+1)%y2%a(:,:))
 w(n2:n5,n2:n4)=p(:n4,:n3)+v(n1,n5-n1,n4+1)%y2%b(:n4,:n3)
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,105
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4))
 w(n2:n5,n2:n4)=p(:n4,:n3)+v(n1,n5-n1,n4+1)%y2%b(:n4,:n3)
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,106
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4))
 w(n2:n5,n2:n4)=p(n1:n4,n1:n3)+v(n1,n5-n1,n4+1)%y2%b(n1:n4,n1:n3)
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,107
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a(:,:),w=>v(n1,n5-n1,n4+1)%y2%a(:,:))
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v(n1,n5-n1,n4+1)%y2%b(k1,k2)
end do
end do
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,108
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4))
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v(n1,n5-n1,n4+1)%y2%b(k1,k2)
end do
end do
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,109
!
v(n1,n5-n1,n4+1)%y2%a=1
v(n1,n5-n1,n4+1)%y2%b=2
associate( p=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4),w=>v(n1,n5-n1,n4+1)%y2%a(n1:n5,n1:n4))
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v(n1,n5-n1,n4+1)%y2%b(k1,k2)
end do
end do
end associate
if (any([v(n1,n5-n1,n4+1)%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,110
end
n1=1;n4=4;n5=5
call       s1(n1,n4,n5)
print *,'pass'
end
