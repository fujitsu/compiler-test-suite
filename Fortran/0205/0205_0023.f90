module mod
type ty1
                 integer,contiguous,pointer:: trg(:)
end type
contains
subroutine sss(str)
                 integer,pointer :: ptr(:)
                 integer,pointer :: ptr2(:)
type (ty1),target :: str
                 ptr=>str%trg
                 ptr=>str%trg(1:5:1)
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
type(ty1),target :: str
allocate(str%trg(5))
str%trg = [1,2,3,5,4]
call sss(str)
end
