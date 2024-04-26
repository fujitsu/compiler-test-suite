module m1
integer,parameter:: k1=3,k2=4,k3=5
integer:: a(k1,k2,k3+1,k1)
integer:: b(k1,k2,k3+1,k1)
integer::n1=2,n2=2
contains
pure function f(n2,n3,k2,k1) result(r)
integer,intent(in)::n2,n3,k2,k1
integer::r(k2,k1)
r=n2+n3
end function
subroutine s1(k1,k2,k3)
integer,allocatable::xxx(:)
integer(8)::ip
allocate(xxx(10))
ip=loc(xxx)
forall (n2=1:k1,n3=2:k3)
  a(n2,:,n3,:)=a(n2,:,n3,:)+reshape([a(n2,:,n3-1,:)],[k2,k1])+f(n2,n3,k2,k1)
  a(n2,:,n3,:)=a(n2,:,n3,:)+reshape([a(n2,:,n3-1,:)],[k2,k1])+f(n2,n3,k2,k1)
end forall
deallocate(xxx)
allocate(xxx(10))
if (ip/=loc(xxx)) then
  write(1,'(z16.16)') ip,loc(xxx)
endif
end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3+1,k1)

do nnn=1,2
do      n3=2,k3
do      n2=1,k1
  c(n2,:,n3,:)=b(n2,:,n3,:)+reshape([b(n2,:,n3-1,:)],[k2,k1])+f(n3,n2,k2,k1)
end do
end do
do      n3=2,k3
do      n2=1,k1
  b(n2,:,n3,:)=c(n2,:,n3,:)
end do
end do
end do
end subroutine
end
use m1
a=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
b=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
