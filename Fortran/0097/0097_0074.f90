        type ty
          integer,pointer :: ptr(:)
        end type
        type(ty)::obj
         integer,target:: trg(5) = [1,2,3,5,4]
          obj%ptr=>trg(1:5:2)
          call s1_int(obj%ptr(:))
          if(any(trg.ne.[11,2,13,5,14]))print*,"109"
          print*,"Pass"
        contains
         subroutine s1_int(dmy)
         integer,contiguous::dmy(:)
         if(loc(dmy).eq.loc(trg))print *,201,loc(dmy),loc(trg)
           dmy = dmy+10
         end subroutine
        end

