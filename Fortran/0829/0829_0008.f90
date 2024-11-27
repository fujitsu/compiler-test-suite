
                 integer,target,contiguous :: ptr_c(5)
                 integer,pointer,contiguous :: ptr_cp(:)
                 integer,pointer :: ptr(:)
                 integer,pointer :: ptr2(:)
                 integer,target:: trg(5) = [1,2,3,5,4]
                 ptr=>trg
                 ptr=>trg(1:5:2)
                 ptr2 => ptr(1:3)

                 call s1_int(ptr2)
                 print*,"pass"
                 contains
                  subroutine s1_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [1,3,4])) print*,121,dmy
                   dmy = dmy+10
                 end subroutine
                end

