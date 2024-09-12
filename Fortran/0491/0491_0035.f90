   type ty
         integer::ll
         end type

        type(ty),target,save :: trg
        class(*),pointer::ptr=>trg

         trg%ll=1
         k=0
        select type(ptr)
          type is(ty)
            if (ptr%ll/=1) print *,'101'
            k=1
        end select
        if (k/=1) print *,101
        print*,"pass"
        end
