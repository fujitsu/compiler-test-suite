module mod01
  implicit none
contains
  subroutine sub(p1)
    integer w_val01,w_val02,w_no_val,p1
    value :: w_val01,w_val02
    p1 = 0
    return
  entry ent01(w_no_val)
    if (w_no_val == 1) then
      print *,"pass"
    else
      print *,"ng ",w_no_val
    end if
    return
  entry ent02(w_val01,w_no_val,w_val02)
     print *,"pass",w_val01,w_val02
     return
  end subroutine
end module

  use mod01
  implicit none
  call ent01(1)
end program
