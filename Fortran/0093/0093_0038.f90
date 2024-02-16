
type ty
 complex :: cmp1 =(12,13)
end type ty
   type(ty),parameter :: obj =ty()
   
        real::rr= obj%cmp1%re
        real::ss= obj%cmp1%im

if(rr .ne. 12)print*,101
if(ss .ne. 13)print*,102
        print*,"PASS"
end

