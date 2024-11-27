  program main

  end program main

  module mod
    integer :: k
  end module

  subroutine sub(e1,e2,e3,e4,f1,f2,f3,f4,g1,g2,g3,g4,i)

    use mod

    implicit character*(i)(e),character(j)(f),character(k)(g)

    character*(i) ,value :: e1
    character ,value :: e2*(i)
    character (i) ,value :: e3
    value :: e4

    common /com/j
    character*(j) ,value :: f1
    character ,value :: f2*(j)
    character (j) ,value :: f3
    value :: f4

    character*(k) ,value :: g1
    character ,value :: g2*(k)
    character (k) ,value :: g3
    value :: g4

  end subroutine sub
