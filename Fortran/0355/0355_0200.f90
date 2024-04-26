module m
  implicit none
  type str
     complex(8), allocatable :: a(:)
  end type str
end module m

subroutine sub(n,x,b,c)
  use m
  implicit none
  integer :: i,n
  type(str) :: x
  complex(8) :: b(n),c(n)

  do i=1,n
     x%a(i) = cmplx(i,-i,kind=8)
     c(i) = x%a(i)
     b(i) = conjg(c(i))
  end do
end subroutine sub

program main
  use m
  implicit none
  type(str) :: x
  integer :: i
  integer,parameter :: n=16 
  complex(8) :: b(n), c(n), res

  allocate(x%a(n))
  call sub(n,x,b,c)

  do i=1,n
     res = conjg(cmplx(i,-i,kind=8))
     if (b(i) .ne. res) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main
