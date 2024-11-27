      block   
        character*2,target,save :: trg = "AB"
        character*3,target,save :: trg2 = "ABC"
        class(*),pointer::ptr=>trg
        type ty
          class(*),pointer::ptr=>trg
        end type
        type(ty)::obj = ty(trg2)
        type(ty),allocatable::obj3
        allocate(obj3)
        k=0
        select type(ptr)
          type is(character(len=*))
           if (ptr/="AB") print *,101
            k= 1
           if(len(ptr).ne.2)print*,"301"
           class default
           print *,"102"
        end select
        if (k/=1) print *,102
        k=0
        select type(A=>obj3%ptr)
          type is(character(len=*))
           if (A/="AB") print *,101
            k= 1
           if(len(A).ne.2)print*,"301"
           class default
           print *,"102"
        end select
        k=0
        select type(A=>obj%ptr)
          type is(character(len=*))
           if (A/="ABC") print *,101
            k= 1
           if(len(A).ne.3)print*,"301"
           class default
           print *,"102"
        end select
        if (k/=1) print *,102
        print*,"PASS"
        end block
      end

