        integer,pointer :: ptr(:)
         integer,target:: trg(5) = [1,2,3,5,4]
         integer::k=1
         if (k==1) then
          ptr=>trg
        else
          ptr=>trg(1::2)
         endif
          call s1_int(ptr(::k+1))
          if(any(trg.ne.[11,2,13,5,14]))print*,"109", trg
          print*,"Pass"
        contains
         subroutine s1_int(dmy)
        integer,contiguous::dmy(:)


           if(loc(dmy).eq.loc(trg))print *,201,loc(dmy),loc(trg)
           dmy = dmy+10
         end subroutine
        end

