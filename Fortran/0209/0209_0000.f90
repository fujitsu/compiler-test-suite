        complex(kind=2),target,save :: trg =(10,20)
        class(*),pointer::ptr=>trg%im
        class(*),pointer::ptr2=>trg
        k=0
        select type(ptr)
          type is(real(kind=2))
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        k=0
         select type(ptr2)
          type is(complex(kind=2))
           k=9
          type is(complex)
             print *,"311"
          class default
             print *,"421"
        end select
        if (k/=9) print *,502

         print*,"PASS"
        end

