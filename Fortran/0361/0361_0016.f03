  implicit none
  interface
    subroutine ent01(p01)
       integer :: p01
    end subroutine
  end interface

  call ent02(1)
end program

subroutine sub(p01)
  integer w_val,w_no_val,p01
  p01 = 0
  return
entry ent01(w_val)
  if (w_val == 1) then
    print *,"pass"
  else
    print *,"ng ",w_val
  end if
  return
entry ent02(w_no_val)
  if (w_no_val == 1) then
    print *,"pass"
  else
    print *,"ng ",w_no_val
  end if
  return
end subroutine
