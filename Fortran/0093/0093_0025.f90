module m1
type ty
 complex :: cmp1(2)
end type ty

type tt
 type(ty) :: obj
end type tt
type(tt),parameter :: obj2=tt(ty([(2,3),(3,5)]))
   end module m1


 use m1, only : obj2

       real::rr(2)= obj2%obj%cmp1%re

if(rr(1) .ne. 2) print*,101,rr(1)
if(rr(2) .ne. 3) print*,102,rr(2)
                print*,"PASS"
       
       end

