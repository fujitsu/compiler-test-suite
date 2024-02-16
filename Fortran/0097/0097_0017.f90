integer,pointer :: ptr(:)
integer,target:: trg(5) = [1,2,3,5,4]
         ptr=>trg

         call s1_int(ptr(1:5:1))
         print*,"Pass"
         contains
         subroutine s1_int(dmy)
        integer,contiguous::dmy(:)

        if (loc(dmy)/=loc(trg)) print *,201,loc(dmy),loc(trg)
        end subroutine
        end

