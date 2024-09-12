
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
        type tp
           procedure(sub),pointer,nopass :: ps1 => sub
           procedure(sub),pointer,nopass :: ps2 => sub
           real(kind=4) :: r0
        end type tp
        type(tp) ::str

        str%r0 = 1.0
        print *, "msubsub"
        call str%ps1
        call str%ps2
        print *,str%r0
      end subroutine msubsub
  end subroutine msub

end module mod

program main
use mod

call msub
end program
