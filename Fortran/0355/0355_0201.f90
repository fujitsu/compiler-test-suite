 module m
  implicit none
  type str_1
     complex(8), allocatable :: a(:)
  end type str_1
  type str_2
     type(str_1) :: zzz
  end type str_2
end module m

subroutine sub(n,x,b)
  use m
  implicit none
  integer :: i,n
  type(str_2) :: x
  complex(8) :: b(n)

  do i=1,n
     x%zzz%a(i) = cmplx(i,-i,kind=8)
     b(i) = conjg(x%zzz%a(i))
  end do
end subroutine sub

program main
  use m
  implicit none
  type(str_2) :: x
  integer :: i
  integer,parameter :: n=16 
  complex(8) :: b(n), res

  allocate(x%zzz%a(n))
  call sub(n,x,b)

  do i=1,n
     res = conjg(cmplx(i,-i,kind=8))
     if (b(i) .ne. res) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main
