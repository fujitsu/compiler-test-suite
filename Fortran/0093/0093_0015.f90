
type ty
 complex(kind=8) :: cmp1 
end type ty
   type(ty),parameter :: obj =ty((7,9))
   
        real::rr= obj%cmp1%re
        real::ss= obj%cmp1%im

if(rr .ne. 7)print*,101
if(ss .ne. 9)print*,102,ss
        print*,"PASS"
end

