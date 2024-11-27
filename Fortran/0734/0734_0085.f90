  module mod
    type a ; integer :: a=555 ; end type
  end module

  subroutine sub1()
  use mod,t1=>a,t2=>a
  type(t1) v1
  type(t2) v2
  if (v1%a /= 555) print *,"error-2"
  if (v2%a /= 555) print *,"error-3"
  end

  module m1
    use mod
  end module

  subroutine sub2
    use mod
    use m1
    type(a) v1
    if (v1%a /= 555) print *,"error-1"
  end subroutine

    call sub1()
    call sub2()
    print *,"pass"
  end program

