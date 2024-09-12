
                 integer,pointer,contiguous :: ptr(:),ptr1(:)
                 integer,pointer :: ptr2(:)
                 integer,target:: trg(5) = [1,2,3,5,4]
                 ptr1=>trg
                 ptr=>ptr1(1:5:1) 
                 ptr2 => ptr(1:3)
                 call s1_int(ptr2)
                 print*,"pass"
                 contains
                  subroutine s1_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [1,2,3])) print*,121,dmy
                   dmy = dmy+10
                 end subroutine
                end

