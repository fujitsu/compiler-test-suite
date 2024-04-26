subroutine s1(n1,n4,n5)
integer,pointer,dimension(:,:) ::a,b,c
allocate (a(n5,n4),stat=kkk)
a=1
allocate (b,source=a,stat=kkk)
allocate (c,source=b,stat=kkk)
b=2
n2=2;n3=3
do k2=1,3
do k1=1,4
 a(k1+1,k2+1)=a(k1,k2)+b(k1,k2)
end do
end do
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,100
!
a=1
b=2
do k2=1,3
do k1=1,4
associate( p=>a,w=>c)
 a(k1+1,k2+1)=p(k1,k2)+b(k1,k2)
end associate
end do
end do
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,101
!
a=1
b=2
associate( p=>a,w=>c)
do k2=1,3
do k1=1,4
 a(k1+1,k2+1)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,102
!
a=1
b=2
do k2=1,3
do k1=1,4
associate( p=>a(k1,k2),w=>c(k1,k2))
 a(k1+1,k2+1)=p+b(k1,k2)
end associate
end do
end do
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,103
!
a=1
b=2
associate( p=>a,w=>c)
 a(n2:n5,n2:n4)=p(:n4,:n3)+b(:n4,:n3)
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,104
!
a=1
b=2
associate( p=>a(:,:),w=>c(:,:))
 a(n2:n5,n2:n4)=p(:n4,:n3)+b(:n4,:n3)
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,105
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
 a(n2:n5,n2:n4)=p(:n4,:n3)+b(:n4,:n3)
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,106
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
 a(n2:n5,n2:n4)=p(n1:n4,n1:n3)+b(n1:n4,n1:n3)
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,107
!
a=1
b=2
associate( p=>a(:,:),w=>c(:,:))
do k2=1,3
do k1=1,4
 a(k1+1,k2+1)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,108
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
do k2=1,3
do k1=1,4
 a(k1+1,k2+1)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,109
!
a=1
b=2
associate( p=>a(n1:n5,n1:n4),w=>c(n1:n5,n1:n4))
do k2=1,3
do k1=1,4
 a(k1+1,k2+1)=p(k1,k2)+b(k1,k2)
end do
end do
end associate
if (any([a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,110
end
n1=1;n4=4;n5=5
call       s1(n1,n4,n5)
print *,'pass'
end
