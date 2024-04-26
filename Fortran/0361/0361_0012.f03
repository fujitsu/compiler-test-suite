module mod01
  implicit none
contains
  subroutine sub(p01)
    integer w_val,w_no_val,p01
    value :: w_val
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
    w_no_val = 2
    return
  end subroutine
end module

  use mod01
  implicit none
  call ent01(1)
end program
