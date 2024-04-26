
                 integer,pointer,contiguous :: ptr(:),ptr1(:)
                 integer,pointer :: ptr2(:)
                 integer,target:: trg(5) = [1,2,3,5,4]
if (1.eq.2) then
                 ptr1=>trg
                 ptr=>ptr1
                 ptr=ptr1(1:5:2)
                 ptr=>ptr1(1:5:1) 
                 ptr2 => ptr(1:3)
                 call s1_int(ptr2)
end if
                 print*,"pass"
                 contains
                  subroutine s1_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [1,3,4])) print*,121,dmy
                   dmy = dmy+10
                 end subroutine
                end

