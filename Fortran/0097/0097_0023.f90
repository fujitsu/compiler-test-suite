integer,pointer :: ptr(:)
integer,pointer :: ptr2(:)
integer,target:: trg(5) = [1,2,3,5,4]
integer,target:: trg2(5) = [1,2,3,5,4]
         ptr=>trg
         ptr2=>trg2

         call s1_int(ptr(:), ptr2(:))
if (any(ptr/=[21,12,23,15,24])) print *,101,ptr
if (any(ptr2/=[21,12,23,15,24])) print *,101,ptr2
         print*,"Pass"
         contains
         subroutine s1_int(dmy,dmy2)
        integer::dmy(:)


        integer,contiguous::dmy2(:)
        if (loc(dmy)/=loc(trg)) print *,201,loc(dmy),loc(trg)
        if (loc(dmy2)/=loc(trg2)) print *,202,loc(dmy2),loc(trg2)
        call s2_int(dmy(::2),dmy2(::2))
        dmy = dmy +10
        dmy2 = dmy2 +10
        end subroutine 
         subroutine s2_int(dmy,dmy2)
        integer,contiguous::dmy(:)


        integer,contiguous::dmy2(:)
        if (loc(dmy) ==loc(trg)) print *,204,loc(dmy),loc(trg)
        if (loc(dmy2)==loc(trg2)) print *,205,loc(dmy2),loc(trg2)
        dmy = dmy +10
        dmy2 = dmy2 +10
        end subroutine 
        end

