program main
  implicit none
  integer :: a(2) = (/1,2/)
  call foo(1,a)
contains
  subroutine foo(v,a)
    integer,value :: v
    integer a(:)
    print *, v, shape(a)
  end subroutine foo
end program main
