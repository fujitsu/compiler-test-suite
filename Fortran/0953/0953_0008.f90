      block  
        integer,target,save :: trg=20
        integer*8,target,save :: trg2=22
        real*16,target::rtar1 =30.2
        real*8,target::rtar3 =33.2
        logical*4,target::ltar = .false.
        class(*),pointer::ptr=>trg
        class(*),pointer::ptr1=>trg2
        class(*),pointer::ptr2=>rtar1
        class(*),pointer::ptr3=>rtar3
        class(*),pointer::ptr4=>ltar
        
        type ty1
         class(*),pointer::ptr=>trg
         class(*),pointer::ptr1=>trg2
         class(*),pointer::ptr2=>rtar1
         class(*),pointer::ptr3=>rtar3
         class(*),pointer::ptr4=>ltar
       end type
        type ty2
         class(*),pointer::ptr=>NULL()
         class(*),pointer::ptr1=>NULL()
         class(*),pointer::ptr2=>NULL()
         class(*),pointer::ptr3=>NULL()
         class(*),pointer::ptr4=>NULL()
       end type

       type(ty1)::obj1
       type(ty2)::obj2 = ty2(trg,trg2,rtar1,rtar3,ltar)
        k=0
        select type(A=>obj1%ptr)
          type is(integer)
           if (A/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
         select type(A=>obj1%ptr1)
          type is(integer(kind=8))
           if (A/=trg2) print *,101
           k=1
          class default
             print *,"Default"
        end select
        select type(A=>obj1%ptr2)
          type is(REAL(kind=16))
           if (A/=rtar1) print *,101
           k=1
          class default
             print *,"Default"
        end select
         select type(A=>obj1%ptr3)
          type is(REAL(KIND=8))
           if (A/=rtar3) print *,101
           k=1
          class default
             print *,"Default"
        end select
        select type(A=>obj1%ptr4)
          type is(LOGICAL(KIND=4))
           if (A.neqv.ltar) print *,101
           k=1
          class default
             print *,"Default"
        end select
      
        k=0
        select type(A=>obj2%ptr)
          type is(integer)
           if (A/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
         select type(A=>obj2%ptr1)
          type is(integer(kind=8))
           if (A/=trg2) print *,101
           k=1
          class default
             print *,"Default"
        end select
        select type(A=>obj2%ptr2)
          type is(REAL(kind=16))
           if (A/=rtar1) print *,101
           k=1
          class default
             print *,"Default"
        end select
         select type(A=>obj2%ptr3)
          type is(REAL(KIND=8))
           if (A/=rtar3) print *,101
           k=1
          class default
             print *,"Default"
        end select
        select type(A=>obj2%ptr4)
          type is(LOGICAL(KIND=4))
           if (A.neqv.ltar) print *,101
           k=1
          class default
             print *,"Default"
        end select
        k=0
        select type(ptr)
          type is(integer)
           if (ptr/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
         select type(ptr1)
          type is(integer(kind=8))
           if (ptr1/=trg2) print *,101
           k=1
          class default
             print *,"Default"
        end select
        select type(ptr2)
          type is(REAL(kind=16))
           if (ptr2/=rtar1) print *,101
           k=1
          class default
             print *,"Default"
        end select
         select type(ptr3)
          type is(REAL(KIND=8))
           if (ptr3/=rtar3) print *,101
           k=1
          class default
             print *,"Default"
        end select
        select type(ptr4)
          type is(LOGICAL(KIND=4))
           if (ptr4.neqv.ltar) print *,101
           k=1
          class default
             print *,"Default"
        end select
        print*,"PASS"
        end block
end

