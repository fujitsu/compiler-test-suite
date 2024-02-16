
type ty
 complex :: cmp1
end type ty
type(ty),parameter :: obj(3) =[ty((1,2)),ty((3,4)),ty((5,6))]
   
real::rr,ii,rr2,ii2,rr3,ii3
rr= obj(1)%cmp1%re
ii= obj(1)%cmp1%im
rr2= obj(2)%cmp1%re
ii2= obj(2)%cmp1%im
rr3= obj(3)%cmp1%re
ii3= obj(3)%cmp1%im

if(rr .ne. 1)print*,101
if(ii .ne. 2)print*,102
if(rr2 .ne. 3)print*,103
if(ii2 .ne. 4)print*,104
if(rr3 .ne. 5)print*,105
if(ii3 .ne. 6)print*,106
        print*,"PASS"
end

