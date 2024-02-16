         integer,pointer :: ptr(:)
         integer,pointer :: ptr2(:)
         integer,target:: trg(5) = [1,2,3,5,4]
         ptr=>trg(1:5:1)
         ptr2 => ptr(:)
         call s1_int(ptr2(:))
         if(any(trg.ne.[11,12,13,15,14]))print*,"109", trg
         print*,"Pass"
         contains
       subroutine s1_int(dmy)

         integer, contiguous::dmy(:)
         if(loc(dmy).ne.loc(trg))print*,"101"
         dmy = dmy+10
         end subroutine
        end

