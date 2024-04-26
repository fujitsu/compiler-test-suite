
program main
integer,parameter::n=100
integer,parameter::m=10
type str2
  real(8),dimension(:,:),pointer :: x,y,z
end type str2
type str1
  integer :: i1,i2
  type(str2),pointer :: s1
end type str1
type(str1),dimension(:),pointer :: a,b

integer,parameter :: ansa=12375000
integer :: anssum

allocate(a(m))
allocate(b(m))
do i=1,m
  allocate(a(i)%s1)
  allocate(b(i)%s1)
  allocate(a(i)%s1%x(n,n+m))
  allocate(a(i)%s1%y(n,n+m))
  allocate(a(i)%s1%z(n,n+m))
  allocate(b(i)%s1%x(n,n+m))
  allocate(b(i)%s1%y(n,n+m))
  allocate(b(i)%s1%z(n,n+m))
  a(i)%i1=n
  a(i)%i2=n+m
  a(i)%s1%x=1
  a(i)%s1%y=2
  a(i)%s1%z=3
enddo

call sub_test(a,b,m)

anssum=0
do i=1,m
  anssum = anssum + sum(b(i)%s1%x)
enddo

if (anssum .eq. ansa) then
  print *,"ok: sum(b(i)%s1%x) = ", anssum
else
  print *,"ng: sum(b(i)%s1%x) = ", anssum
endif

do i=1,m
  deallocate(a(i)%s1%x)
  deallocate(a(i)%s1%y)
  deallocate(a(i)%s1%z)
  deallocate(b(i)%s1%x)
  deallocate(b(i)%s1%y)
  deallocate(b(i)%s1%z)
  deallocate(a(i)%s1)
  deallocate(b(i)%s1)
enddo

deallocate(a)
deallocate(b)

contains
  subroutine sub_test(c,d,mm)
    type(str1),dimension(:),pointer :: c,d
    integer :: mm
    do kk=1,mm
      do jj=1,c(1)%i2
        do ii=1,c(1)%i1
          d(kk)%s1%x(ii,jj) = c(kk)%s1%x(ii,jj) + ii + jj + kk
          d(kk)%s1%y(ii,jj) = c(kk)%s1%y(ii,jj) + ii + jj
          d(kk)%s1%z(ii,jj) = c(kk)%s1%z(ii,jj) + ii
        enddo
      enddo
    enddo
  end subroutine sub_test
end program

