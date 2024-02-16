        integer,pointer :: ptr(:)
         integer,target:: trg(5) = [1,2,3,5,4]
         integer :: K =2
          ptr=>trg(1:5:K)
          call s1_int(ptr(:))
          if(any(trg.ne.[11,2,13,5,14]))print*,"109"
          print*,"Pass"
        contains
         subroutine s1_int(dmy)

         integer, contiguous::dmy(:)
         if(loc(dmy).eq.loc(trg))print *,201,loc(dmy),loc(trg)
         if(loc(dmy).eq.loc(ptr))print *,201,loc(dmy),loc(ptr)
           dmy = dmy+10
         end subroutine
        end

