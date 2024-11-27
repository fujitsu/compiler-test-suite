       module m 
        complex*16,target,save :: trg =(10,20)
        type ty
          complex*16 :: trg =(10,20)
        end type
        type(ty),target::obj_ty
        class(*),pointer::ptr=>trg
        class(*),pointer::ptr2=>trg
        class(*),pointer::ptr3=>obj_ty%trg
        class(*),pointer::ptr4=>obj_ty%trg
       contains 
       subroutine sub()
        k=0
        select type(ptr)
          type is(real(kind=8))
             print *,"111"
          type is(complex(kind=8))
           k=1
           if (ptr/=trg) print *,101
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr2)
          type is(real(kind=8))
             print *,"209"
          type is(complex(kind=8))
           k=2
           if (ptr2/=trg) print *,101
          class default
             print *,"210"
        end select
         select type(ptr3)
          type is(real(kind=8))
             print *,"111"
          type is(complex(kind=8))
           if (ptr3/=obj_ty%trg) print *,101
           k=1
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr4)
          type is(real(kind=8))
             print *,"209"
          type is(complex(kind=8))
           if (ptr4/=obj_ty%trg) print *,201
           k=2
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
             print *,"111"
          type is(complex(kind=8))
           if (ptr/=trg) print *,101
           k=1
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr2)
          type is(real(kind=8))
             print *,"209"
          type is(complex(kind=8))
           if (ptr2/=trg) print *,201
           k=2
          class default
             print *,"210"
        end select
        select type(ptr3)
          type is(real(kind=8))
             print *,"111"
          type is(complex(kind=8))
           if (ptr3/=obj_ty%trg) print *,101
           k=1
          class default
             print *,"121"
        end select
        if (k/=1) print *,102
        select type(ptr4)
          type is(real(kind=8))
             print *,"209"
          type is(complex(kind=8))
           if (ptr4/=obj_ty%trg) print *,101
           k=2
          class default
             print *,"210"
        end select
        if (k/=2) print *,202
        end
end

