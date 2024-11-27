     block   
        integer*8,target,save :: trg=20
        complex*16,target::trg2 =(10,20)
        type ty1
         class(*),pointer::ptr
         class(*),pointer::ptr2
       end type
       type(ty1)::obj1
       type ty2
         type(ty1)::obj1
       end type
       type(ty2)::obj4
       data obj1%ptr,  obj1%ptr2, obj4%obj1  /trg, trg2%re, ty1(trg, trg2%re)/ 
        k=0
       select type(A=>obj1%ptr)
          type is(integer(kind=8))
           if (A/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
        k=0
       select type(A=>obj1%ptr2)
          type is(real(kind=8))
           if (A/=trg2%re) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
        k=0
       select type(A=>obj4%obj1%ptr)
          type is(integer(kind=8))
           if (A/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
        k=0
       select type(A=>obj4%obj1%ptr2)
          type is(real(kind=8))
           if (A/=trg2%re) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
        print*,"PASS"
end block
end

