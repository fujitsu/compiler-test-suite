
module mod
  type tp
     integer(kind=2)::s0=1
     procedure(sub),pointer,nopass :: pp => sub
     integer(kind=2)::s1=2
  end type tp
  type(tp) :: str

contains
  subroutine sub
    print *, "sub"
  end subroutine sub

  subroutine msub
    type tps
       integer(kind=2)::s0=2
       procedure(sub),pointer,nopass :: ps => sub
       integer(kind=2)::s1=3
    end type tps
    type(tps) :: strs

    print *, "msub"
    print *,strs%s0,strs%s1
    call strs%ps
  end subroutine msub

  function mfunc()
    integer :: mfunc
    type tpf
       integer(kind=2)::s0=3
       procedure(sub),pointer,nopass :: pf => sub
       integer(kind=2)::s1=4
    end type tpf
    type(tpf) :: strf
    
    print *, "mfunc"
    print *,strf%s0,strf%s1
    call strf%pf
    mfunc = 10
    return
  end function mfunc

end module mod

program main
  use mod
  integer :: ret
  print *,str%s0,str%s1
  call msub
  ret = mfunc()
  print *, ret

end program
