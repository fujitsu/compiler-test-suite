                 integer,pointer :: ptr(:)
                 integer,pointer :: ptr2(:)
                 integer,target:: trg(5) = [1,2,3,5,4]
                 integer :: a3(3)=(/1,2,3/)
                 ptr  => trg(1:5:2)
                 ptr2 => ptr(1:3)
                 call s1_int(ptr2)
                 ptr2 => ptr(a3(1):a3(3))
                 call s2_int(ptr2)
                 print*,"pass"
                 contains
                  subroutine s1_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [1,3,4])) print*,121,dmy
                   dmy = dmy+10
                 end subroutine
                  subroutine s2_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [11,13,14])) print*,121,dmy
                 end subroutine
                end

