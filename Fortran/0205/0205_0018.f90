
                 integer,pointer :: ptr(:)
                 integer,pointer :: ptr2(:)
                 integer,target:: trg(5) = [1,2,3,5,4]
                 goto 10
       20        ptr2 => ptr(1:3)
                  goto 30
       10         ptr=>trg(1:5:2)
                  goto 20
      30         call s1_int(ptr2)
                 print*,"pass"
                 contains
                  subroutine s1_int(dmy)
                   integer::dmy(3)
                   if(any(dmy /= [1,3,4])) print*,121,dmy
                   dmy = dmy+10
                 end subroutine
                end

