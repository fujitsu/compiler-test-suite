
module mod

contains

  subroutine sub
    print *, "sub"
  end subroutine sub

  subroutine msub
    print *, "msub"
    call msubsub
    contains
      subroutine msubsub
        procedure(sub),pointer :: ps => sub
        print *, "msubsub"
        call ps
      end subroutine msubsub
  end subroutine msub

end module mod

program main
use mod

call msub

end program
