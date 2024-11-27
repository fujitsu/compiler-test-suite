       type ty_cp 
        complex(kind=8):: trg =(10,20)
       end type
       type(ty_cp), target::objtycp
        class(*),pointer::ptr=>objtycp%trg%im
        class(*),pointer::ptr2=>objtycp%trg%re
        type ty2
          class(*),pointer::ptr=>objtycp%trg%im
          class(*),pointer::ptr2=>objtycp%trg%re
        end type
         
        type(ty2)::obj1
        type(ty2)::obj2 = ty2(objtycp%trg%re,objtycp%trg%im)
        k=0
        select type(ptr)
          type is(real(kind=8))
           if (ptr/=objtycp%trg%im) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr2)
          type is(real(kind=8))
           if (ptr2/=objtycp%trg%re) print *,201
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
       select type(A=>obj1%ptr)
          type is(real(kind=8))
           if (A/=objtycp%trg%im) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(A=>obj1%ptr2)
          type is(real(kind=8))
           if (A/=objtycp%trg%re) print *,201
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
        select type(A=>obj2%ptr)
          type is(real(kind=8))
           if (A/=objtycp%trg%re) print *,101
           k=1
          type is(complex)
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(A=>obj2%ptr2)
          type is(real(kind=8))
           if (A/=objtycp%trg%im) print *,201
           k=2
          type is(complex)
             print *,"209"
          class default
             print *,"210"
        end select
        if (k/=2) print *,202
            print*,"PASS"
        end

