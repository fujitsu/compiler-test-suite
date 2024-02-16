type ty
 complex :: cmp1
end type ty

type tt
 type(ty) :: obj
end type tt
type(tt),parameter :: obj2(3)=[tt(ty((2,3))),tt(ty((4,5))),tt(ty((11,12)))]

       real::rr(3)= obj2%obj%cmp1%re
       real::qq(3)= obj2%obj%cmp1%im

if(rr(1) .ne. 2) print*,101,rr(1)
if(rr(2) .ne. 4) print*,102,rr(2)
if(rr(3) .ne. 11) print*,102,rr(2)
if(qq(1) .ne. 3) print*,101,qq(1)
if(qq(2) .ne. 5) print*,102,qq(2)
if(qq(3) .ne. 12) print*,102,qq(2)
                print*,"PASS"
       
       end

