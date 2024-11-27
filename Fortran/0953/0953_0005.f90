        complex(kind=8),target,save :: trg =(10,20)
        complex(kind=8),target,save :: trg2 =(11,21)
        complex(kind=8),target,save :: trg3 =(12,22)
        complex(kind=16),target,save :: trg4 =(13,24)
        class(*),pointer::ptr=>trg%im
        class(*),pointer::ptr2=>trg2%re
        type ty2
          class(*),pointer::ptr=>trg3%im
          class(*),pointer::ptr2=>trg4%re
        end type
         
        type(ty2)::obj1
        type(ty2)::obj2 = ty2(trg%re,trg2%im)
        k=0
        select type(ptr)
          type is(real(kind=8))
           if (ptr/=trg%im) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"921"
        end select
        if (k/=1) print *,102
        select type(ptr2)
          type is(real(kind=8))
           if (ptr2/=trg2%re) print *,211
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
       select type(A=>obj1%ptr)
          type is(real(kind=8))
           if (A/=trg3%im) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"821"
        end select
        if (k/=1) print *,102
        select type(A=>obj1%ptr2)
          type is(real(kind=16))
           if (A/=trg4%re) print *,281
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
        select type(A=>obj2%ptr)
          type is(real(kind=8))
           if (A/=trg%re) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"721"
        end select
        if (k/=1) print *,102
        select type(A=>obj2%ptr2)
          type is(real(kind=8))
           if (A/=trg2%im) print *,211
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
        if (k/=2) print *,202
            print*,"PASS"
        end

