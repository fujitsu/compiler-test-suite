module m
  implicit none
  type str
     complex(16), allocatable :: a(:)
  end type str
end module m

subroutine sub(n,x,b)
  use m
  implicit none
  integer :: i,n
  type(str) :: x
  complex(16) :: b(n)

  do i=1,n
     x%a(i) = cmplx(i,-i,kind=8)
     b(i) = conjg(x%a(i))
  end do
end subroutine sub

program main
  use m
  implicit none
  type(str) :: x
  integer :: i
  integer,parameter :: n=16 
  complex(16) :: b(n), res

  allocate(x%a(n))
  call sub(n,x,b)

  do i=1,n
     res = conjg(cmplx(i,-i,kind=8))
     if (b(i) .ne. res) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main
