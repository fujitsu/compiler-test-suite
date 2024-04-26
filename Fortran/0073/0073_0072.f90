module m1
integer,parameter:: k1=3,k2=4,k3=5,k4=6
complex(8):: a(k1,k2,k3+1,k4)
complex(8):: b(k1,k2,k3+1,k4)
integer::n1=2,n2=2
contains
pure function f(n2,n3,k2,k1,k) result(r)
integer,intent(in)::n2,n3,k2,k1,k
real   (8)::r(k2,k1)
r=n2+n3
end function
subroutine s1(k1,k2,k3,k4)
complex(8) :: d(k1,k2,k3+1,k4)
d=a
forall (n2=1:k1,n3=1:k3)
  d(n2,:,n3+1,:)=real(d(n2,:,n3,:))+reshape([(n,n=1,k2*k4)],[k2,k4])+f(n2,n3,k2,k4,1)
  d(n2,:,n3+1,:)=real(d(n2,:,n3,:))+reshape([(n,n=1,k2*k4)],[k2,k4])+f(n2,n3,k2,k4,2)
end forall
a=d
end subroutine
subroutine s2(k1,k2,k3,k4)
complex(8) :: c(k1,k2,k3+1,k4)

do nnn=1,2
do      n3=1,k3
do      n2=1,k1
  c(n2,:,n3,:)=real(b(n2,:,n3,:))+reshape([(n,n=1,k2*k4)],[k2,k4]) +f(n2,n3,k2,k4,0)
end do
end do
do      n3=1,k3
do      n2=1,k1
  b(n2,:,n3+1,:)=c(n2,:,n3,:)
end do
end do
end do
end subroutine
end
use m1
write(1,'(a)') repeat('0',18)
a=cmplx( &
  reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]), &
  reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
b=cmplx( &
  reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]), &
  reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
call s1(k1,k2,k3,k4)
call s2(k1,k2,k3,k4)
if (any(abs(a-b)>0.0000001)) then
print *,101
print *,a
print *,b
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
