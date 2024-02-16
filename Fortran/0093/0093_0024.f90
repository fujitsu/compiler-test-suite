type ty
 complex :: cmp1 
end type ty
   type(ty),parameter :: obj =ty((7,9))
   
        rr= obj%cmp1%re + obj%cmp1%im

if(rr .ne. 16)print*,101
        print*,"PASS"
end

