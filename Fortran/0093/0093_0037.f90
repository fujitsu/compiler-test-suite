type ty
 complex(kind=8) :: cmp1
end type ty

type tt
 type(ty) :: obj(2)
end type tt
type(tt),parameter :: obj2=tt([ty((2,3)),ty((4,5))])

       real::rr(2)= obj2%obj%cmp1%re
       real::qq(2)= obj2%obj%cmp1%im

if(rr(1) .ne. 2) print*,101,rr(1)
if(rr(2) .ne. 4) print*,102,rr(2)
if(qq(1) .ne. 3) print*,101,qq(1)
if(qq(2) .ne. 5) print*,102,qq(2)
                print*,"PASS"
       
       end

