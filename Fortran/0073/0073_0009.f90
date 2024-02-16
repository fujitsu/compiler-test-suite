module m1
integer,parameter:: k1=30,k2=10,k3=50,k4=100
type x
integer:: a(k1,k2,k3+1,k4)
integer:: b(k1,k2,k3+1,k4)
end type
type(x)::z
!$omp threadprivate( z )
integer::n1=2,n2=2
!interface
! pure subroutine subcheck(x,k)
!   integer,intent(in)::x,k
! end subroutine
!end interface
contains
pure function f(n2,n3,k2,k1,k) result(r)
integer,intent(in)::n2,n3,k2,k1,k
integer::r(k2,k1)
r=n2+n3
!call subcheck(r(1,1),k)
end function
subroutine s1(k1,k2,k3,k4)
forall (n2=1:k1,n3=1:k3)
  z%a(n2,:,n3,:)=z%a(n2,:,n3,:)+reshape([(n,n=1,k2*k4)],[k2,k4])+f(n2,n3,k2,k4,1)
  z%a(n2,:,n3,:)=z%a(n2,:,n3,:)+reshape([(n,n=1,k2*k4)],[k2,k4])+f(n2,n3,k2,k4,2)
end forall
end subroutine
subroutine s2(k1,k2,k3,k4)
integer :: c(k1,k2,k3+1,k4)

do nnn=1,2
do      n3=1,k3
do      n2=1,k1
  c(n2,:,n3,:)=z%b(n2,:,n3,:)+reshape([(n,n=1,k2*k4)],[k2,k4]) +f(n2,n3,k2,k4,0)
end do
end do
do      n3=1,k3
do      n2=1,k1
  z%b(n2,:,n3,:)=c(n2,:,n3,:)
end do
end do
end do
end subroutine
end
use m1
write(1,'(a)') repeat('0',18)
!allocate( z%a(k1,k2,k3+1,k4),z%b(k1,k2,k3+1,k4))
z%a=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])
z%b=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])
call s1(k1,k2,k3,k4)
call s2(k1,k2,k3,k4)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
call subcheck2
print *,'pass'
end
 subroutine subcheck(x,k)
 if(k/=0) then
  write(1,'(i1,1x,z16.16)') k,loc(x)
 endif 
 end subroutine
subroutine subcheck2
character(18)::r1,r,r2
r2=''
rewind 1
read (1,'(a)') r1
if (r1==repeat('0',18)) then
read (1,'(a)',end=10) r
r1=r
endif
do 
read (1,'(a)',end=10) r
if (r(3:)/=r1(3:)) then
  if (r2=='') then
    r2=r
    cycle
  endif
  if (r(3:)/=r2(3:)) then
   if (r(1:1)=='1') then
     print *,201
     print *,r1 
     print *,r
     return
   else
     print *,202
     print *,r2 
     print *,r
   endif
  endif
endif
end do
10 end
