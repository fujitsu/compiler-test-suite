module mod
contains
subroutine sss(trg)
                 integer,pointer :: ptr(:)
                 integer,pointer :: ptr2(:)
                 integer,target,contiguous:: trg(:)
                 ptr(1:5)=>trg(1:5:1)
                 ptr2 => ptr(1:3)
                 call s1_int(ptr2)
                 print*,"pass"
                 contains
                  subroutine s1_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [1,2,3])) print*,121,dmy
                   dmy = dmy+10
                 end subroutine
                end subroutine
end
use mod
integer,target:: trg(5) = [1,2,3,5,4]
call sss(trg)
end
