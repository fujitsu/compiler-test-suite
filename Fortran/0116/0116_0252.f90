
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
type(str1),pointer :: a,b

integer,parameter :: ansa=1287000
real(8) :: anssum

allocate(a)
allocate(b)
allocate(a%s1)
allocate(b%s1)
allocate(a%s1%x(n,n+m))
allocate(a%s1%y(n,n+m))
allocate(a%s1%z(n,n+m))
allocate(b%s1%x(n,n+m))
allocate(b%s1%y(n,n+m))
allocate(b%s1%z(n,n+m))
a%i1=n
a%i2=n+m
a%s1%x=1
a%s1%y=2
a%s1%z=3

call sub_test(a,b,m)

anssum = sum(b%s1%x)

if (anssum .eq. ansa) then
  print *,"ok: sum(b%s1%x) = ", anssum
else
  print *,"ng: sum(b%s1%x) = ", anssum
endif

deallocate(a%s1%x)
deallocate(a%s1%y)
deallocate(a%s1%z)
deallocate(b%s1%x)
deallocate(b%s1%y)
deallocate(b%s1%z)
deallocate(a%s1)
deallocate(b%s1)

deallocate(a)
deallocate(b)

contains
  subroutine sub_test(c,d,mm)
    type(str1) :: c,d
    integer :: mm
      do jj=1,c%i2
        do ii=1,c%i1
          d%s1%x(ii,jj) = c%s1%x(ii,jj) + ii + jj + mm
          d%s1%y(ii,jj) = c%s1%y(ii,jj) + ii + jj
          d%s1%z(ii,jj) = c%s1%z(ii,jj) + ii
        enddo
      enddo
  end subroutine sub_test
end program

