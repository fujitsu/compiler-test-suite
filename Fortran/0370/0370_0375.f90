
module mod
  procedure(sub),pointer :: pp => sub

contains
  subroutine sub
    print *, "sub"
  end subroutine sub

  subroutine msub
    procedure(sub),pointer :: ps => sub
    print *, "msub"
    call ps
  end subroutine msub

  function mfunc()
    integer :: mfunc
    procedure(sub),pointer :: pf => sub
    print *, "mfunc"
    call pf
    mfunc = 10
    return
  end function mfunc

end module mod

program main
use mod
integer ret
call pp
call msub
ret = mfunc()
print *, ret

end program
