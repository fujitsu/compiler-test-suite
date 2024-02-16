module m1
type ty
complex(kind=16) :: cmp1 = (17,19)
end type ty
type(ty),parameter :: obj(3) =ty()
   end module

   use m1
        real::ss= obj(2)%cmp1%im
        real::ss2= obj(2)%cmp1%re
if(ss .ne. 19)print*,101
if(ss2 .ne. 17)print*,102

        print*,"PASS"
        end
