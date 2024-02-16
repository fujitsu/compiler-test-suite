        integer,pointer :: ptr(:)
         integer,target:: trg(5) = [1,2,3,5,4]
         integer::k=1
         if (k==1) then
          ptr=>trg(1:3)
         else
           ptr=>trg(1::2)
         endif
          call s1_int(ptr(:))
          print*,"Pass"
        contains
         subroutine s1_int(dmy)
          integer,contiguous::dmy(:)

           if(loc(dmy).ne.loc(trg))print *,201,loc(dmy),loc(trg)
         end subroutine
        end

