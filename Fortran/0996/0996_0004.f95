  program main

  end program main

  subroutine sub(e1,e2,e3,e4,f1,f2,f3,f4,g1,g2,g3,g4)

    implicit character*(0)(e),character(1)(f),character(2)(g)

    character*(0) ,value :: e1
    character ,value :: e2*(0)
    character (0) ,value :: e3
    value :: e4

    character*(1) ,value :: f1
    character ,value :: f2*(1)
    character (1) ,value :: f3
    value :: f4

    character*(2) ,value :: g1
    character ,value :: g2*(2)
    character (2) ,value :: g3
    value :: g4

  end subroutine sub
