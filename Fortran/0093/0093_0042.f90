module m1
type ty
complex :: cmp1 = (17,19)
end type ty
type(ty),parameter :: obj(3) =ty((7,9))
   end module

   use m1
        real::ss= obj(2)%cmp1%im
        real::ss2= obj(2)%cmp1%re

if(ss .ne. 9)print*,101
if(ss2 .ne. 7)print*,102

        print*,"PASS"
        end
