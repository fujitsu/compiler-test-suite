
type ty
 complex :: cmp1
end type ty
type,extends(ty) :: tx
integer ii;
end type tx
   type(tx),parameter :: obj =tx((5,6),2)
   
        real::rr= obj%cmp1%re
        real::ii= obj%cmp1%im
        

if(rr .ne. 5)print*,101,rr,ii
if(ii .ne. 6)print*,102

        print*,"PASS"
end

