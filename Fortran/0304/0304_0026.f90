program main
  write(*,*) foo(2.0d0, 3.0d0, 4.0d0, 5.0d0, 6.0d0)
contains
  real*8 function foo(a, b, c, d, e)
    real*8, intent(in)  :: a, b, c, d, e
    foo = (a*b*c - a*d*b) * (-e)
  end function foo
end program main
