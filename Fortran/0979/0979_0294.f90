module mod
contains

subroutine sub(p1)
   integer w_vol,w_no_vol,p1
   p1 = 0
   return
entry ent01(w_vol)
   if (w_vol == 1) then
     print *,"pass"
   else
     print *,"ng ",w_vol
   end if
   return
entry ent02(w_no_vol)
   w_no_vol = 2
   return
end subroutine
end module

use mod

call ent01(1)

end program
