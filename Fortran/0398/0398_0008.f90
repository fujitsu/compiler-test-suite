module m1
integer,parameter:: k1=3,k2=10,k3=5,k4=10
type x
integer,allocatable:: a(:,:,:,:)
integer,allocatable:: b(:,:,:,:)
end type
type(x)::z
!$omp threadprivate( z )
contains
pure function f(n2,n3,k2,k1,k) result(r)
integer,intent(in)::n2,n3,k2,k1,k
integer::r(k2,k1)
r=n2+n3
end function
subroutine s1(k1,k2,k3,k4)
forall (n2=1:k1,n3=1:k3)
  z%a(n2,:,n3,:)=z%a(n2,:,n3,:)+f(n2,n3,k2,k4,1)
  z%a(n2,:,n3,:)=z%a(n2,:,n3,:)+f(n2,n3,k2,k4,1)
end forall
end subroutine
subroutine s2()
integer,save :: c(k1,k2,k3+1,k4)
!$omp threadprivate( c )

do nnn=1,2
do      n3=1,k3
do      n2=1,k1
  c(n2,:,n3,:)=z%b(n2,:,n3,:)+f(n3,n2,k2,k4,0)
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
integer::omp_get_thread_num
call omp_set_num_threads(1)
!$omp parallel
allocate( z%a(k1,k2,k3+1,k4),z%b(k1,k2,k3+1,k4))
z%a=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])+omp_get_thread_num()
z%b=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])+omp_get_thread_num()
call s1(k1,k2,k3,k4)
call s2()
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
!$omp end parallel
print *,'pass'
end
 subroutine subcheck(x,k)
 if(k==1) then
  write(1,'(z16.16)') loc(x)
 endif 
 end subroutine
subroutine subcheck2
character(16)::r1,r
rewind 1
read (1,'(a)') r1
do 
read (1,'(a)',end=10) r
if (r/=r1) then
  print *,201
  print *,r1 
  print *,r
  return
endif
end do
10 end
