        integer,pointer :: ptr(:)
         integer,target:: trg(5) = [1,2,3,5,4]
         integer::k=1
         if (k==1) then
          ptr=>trg(1:3)
        else
          ptr=>trg(1::2)
         endif
          call s1_int(ptr(:))
          if(any(trg.ne.[11,12,13,5,4]))print*,"109"
          print*,"Pass"
        contains
         subroutine s1_int(dmy)
        integer,contiguous::dmy(:)


           if(loc(dmy).ne.loc(trg))print *,201,loc(dmy),loc(trg)
           dmy = dmy+10
         end subroutine
        end

