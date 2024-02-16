integer,pointer :: ptr(:)
integer,target:: trg(5) = [1,2,3,5,4]
         ptr=>trg

         call s1_int(ptr(:))
       if (any(ptr/=[21,22,23,25,24])) print *,101,ptr
         print*,"Pass"
         contains
         subroutine s1_int(dmy)
        integer::dmy(:)


        if (loc(dmy)/=loc(trg)) print *,201,loc(dmy),loc(trg)
        call s2_int(dmy(:))
        dmy = dmy +10
        end subroutine 
        subroutine s2_int(dmy)
        integer,contiguous::dmy(:)


        if (loc(dmy)/=loc(trg)) print *,204,loc(dmy),loc(trg)
        dmy = dmy +10
        end subroutine 
        end

