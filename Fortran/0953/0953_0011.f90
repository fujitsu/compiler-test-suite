       module m 
        complex(kind=8),target,save :: trg =(10,20)
        type ty
          complex(kind=8) :: trg =(10,20)
        end type
        type(ty),target::obj_ty
        class(*),pointer::ptr=>trg%im
        class(*),pointer::ptr2=>trg%re
        class(*),pointer::ptr3=>obj_ty%trg%im
        class(*),pointer::ptr4=>obj_ty%trg%re
       contains 
       subroutine sub()
        k=0
        select type(ptr)
          type is(real(kind=8))
           if (ptr/=trg%im) print *,101
           k=1
          type is(complex(kind=8))
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr2)
          type is(real(kind=8))
           if (ptr2/=trg%re) print *,201
           k=2
          type is(complex(kind=8))
             print *,"209"
          class default
             print *,"210"
        end select
         select type(ptr3)
          type is(real(kind=8))
           if (ptr3/=obj_ty%trg%im) print *,101
           k=1
          type is(complex(kind=8))
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr4)
          type is(real(kind=8))
           if (ptr4/=obj_ty%trg%re) print *,201
           k=2
          type is(complex(kind=8))
             print *,"209"
          class default
             print *,"210"
        end select
        if (k/=2) print *,202
        end
       end
use m
call sub()
call sub2()
print*,"PASS"
contains 
 subroutine sub2()
        k=0
        select type(ptr)
          type is(real(kind=8))
           if (ptr/=trg%im) print *,101
           k=1
          type is(complex(kind=8))
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr2)
          type is(real(kind=8))
           if (ptr2/=trg%re) print *,201
           k=2
          type is(complex(kind=8))
             print *,"209"
          class default
             print *,"210"
        end select
        select type(ptr3)
          type is(real(kind=8))
           if (ptr3/=obj_ty%trg%im) print *,101
           k=1
          type is(complex(kind=8))
             print *,"111"
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr4)
          type is(real(kind=8))
           if (ptr4/=obj_ty%trg%re) print *,201
           k=2
          type is(complex(kind=8))
             print *,"209"
          class default
             print *,"210"
        end select
        if (k/=2) print *,202
        end
end

