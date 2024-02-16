
type ty
 complex(kind=16) :: cmp1
end type ty
type tx
type(ty) :: obj2(3)
end type tx
type tz
type(tx) :: obj3
end type tz
   type(tz),parameter :: obj =tz(tx([ty((1,2)),ty((3,4)),ty((5,6))]))
   
        real::rr= obj%obj3%obj2(1)%cmp1%re
        real::ii= obj%obj3%obj2(1)%cmp1%im
        real::rr2=obj%obj3%obj2(2)%cmp1%re
        real::ii2=obj%obj3%obj2(2)%cmp1%im
        real::rr3=obj%obj3%obj2(3)%cmp1%re
        real::ii3=obj%obj3%obj2(3)%cmp1%im

if(rr .ne. 1)print*,101
if(ii .ne. 2)print*,102
if(rr2 .ne. 3)print*,103
if(ii2 .ne. 4)print*,104
if(rr3 .ne. 5)print*,105
if(ii3 .ne. 6)print*,106
        print*,"PASS"
end

