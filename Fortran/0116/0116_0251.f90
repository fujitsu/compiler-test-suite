!

program main
integer,parameter::n=100
integer,parameter::m=10
type str2
  real(8),dimension(:,:),pointer :: x,y,z
end type str2
type str1
  integer :: i1,i2,i3
  type(str2),dimension(:),pointer :: s1
end type str1
!type(str1),pointer :: a,b
type(str1) :: a,b

integer,parameter :: ansa=515000

allocate(a%s1(m))
allocate(b%s1(m))
do i=1,m
  allocate(a%s1(i)%x(n,n))
  allocate(a%s1(i)%y(n,n))
  allocate(a%s1(i)%z(n,n))
  allocate(b%s1(i)%x(n,n))
  allocate(b%s1(i)%y(n,n))
  allocate(b%s1(i)%z(n,n))
  a%i1=n
  a%i2=n
  a%i3=m
  a%s1(i)%x=1
  a%s1(i)%y=2
  a%s1(i)%z=3
  b%s1(i)%x=i
  b%s1(i)%y=i
  b%s1(i)%z=i
enddo

call sub_test(a,b,m)

if (int(sum(b%s1(1)%x)) .eq. ansa) then
  print *,"ok: sum(b%s1(1)%x) = ",sum(b%s1(1)%x)
else
  print *,"ng: sum(b%s1(1)%x) = ",sum(b%s1(1)%x)
endif

do i=1,m
  deallocate(a%s1(i)%x)
  deallocate(a%s1(i)%y)
  deallocate(a%s1(i)%z)
  deallocate(b%s1(i)%x)
  deallocate(b%s1(i)%y)
  deallocate(b%s1(i)%z)
enddo
  deallocate(a%s1)
  deallocate(b%s1)


contains
  subroutine sub_test(c,d,mm)
    type(str1) :: c,d
    integer :: mm
    do kk=1,c%i3
      do jj=1,c%i2
        do ii=1,c%i1
          d%s1(kk)%x(ii,jj) = c%s1(kk)%x(ii,jj) + ii
          d%s1(kk)%y(ii,jj) = c%s1(kk)%y(ii,jj) + ii
          d%s1(kk)%z(ii,jj) = c%s1(kk)%z(ii,jj) + ii
        enddo
      enddo
    enddo
  end subroutine sub_test
end program

