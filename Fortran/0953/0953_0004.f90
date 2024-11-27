        complex(kind=8),target,save :: trg =(10,20)
        class(*),pointer::ptr=>trg%im
        class(*),pointer::ptr2=>trg%re
        type ty2
          class(*),pointer::ptr=>NULL()
          class(*),pointer::ptr2=>NULL()
        end type
         
        type(ty2)::obj1 = ty2(trg%im,trg%re)
        type(ty2)::obj2 = ty2(trg%re,trg%im)
        k=0
        select type(ptr)
          type is(real(kind=8))
           if (ptr/=trg%im) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr2)
          type is(real(kind=8))
           if (ptr2/=trg%re) print *,201
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
       select type(A=>obj1%ptr)
          type is(real(kind=8))
           if (A/=trg%im) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"921"
        end select
        if (k/=1) print *,102
        select type(A=>obj1%ptr2)
          type is(real(kind=8))
           if (A/=trg%re) print *,201
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
             print *,"821"
        end select
        if (k/=1) print *,102
        select type(A=>obj2%ptr2)
          type is(real(kind=8))
           if (A/=trg%im) print *,201
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
        if (k/=2) print *,202
            print*,"PASS"
        end

