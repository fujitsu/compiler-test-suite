
                 integer,pointer :: ptr(:)
type t
                 integer,pointer :: ptr2(:)
end type
type(t) :: s
                 integer,target:: trg(5) = [1,2,3,5,4]
                 ptr=>trg
                 ptr=>trg(1:5:2)
                 s= t(ptr(1:3))
                 call s1_int(s%ptr2)
                 print*,"pass"
                 contains
                  subroutine s1_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [1,3,4])) print*,121,dmy
                   dmy = dmy+10
                 end subroutine
                end

