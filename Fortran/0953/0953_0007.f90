     module m   
        integer(kind=4),target,save :: trg=20
        integer*8,target,save :: trg2=22
        real*8,target::rtar1 =30.2
        real*8,target::rtar3 =33.2
        logical*4,target::ltar = .false.
        logical*8,target::ltar8 = .false.
        class(*),pointer::ptr=>trg
        class(*),pointer::ptr1=>trg2
        class(*),pointer::ptr2=>rtar1
        class(*),pointer::ptr3=>rtar3
        class(*),pointer::ptr4=>ltar
        class(*),pointer::ptr5=>ltar8
        
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
       contains
       subroutine sub2()
        k=0
        select type(A=>ptr5)
          type is(LOGICAL(KIND=8))
           if (A.neqv.ltar8) print *,109
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,112
          k=0
         select type(A=>obj1%ptr)
          type is(integer(kind=4))
           if (A/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,192
          k=0

         select type(A=>obj1%ptr1)
          type is(integer(kind=8))
           if (A/=trg2) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,193
          k=0
        select type(A=>obj1%ptr2)
          type is(REAL(kind=8))
           if (A/=rtar1) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,194
          k=0
         select type(A=>obj1%ptr3)
          type is(REAL(KIND=8))
           if (A/=rtar3) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,196
          k=0
        select type(A=>obj1%ptr4)
          type is(LOGICAL(KIND=4))
           if (A.neqv.ltar) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,199
          k=0
       end 

      
     end module

module m2
use m
contains 
subroutine sub3()
  k=0
        select type(A=>obj2%ptr)
          type is(integer(kind=4))
           if (A/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,102
          k=0
         select type(A=>obj2%ptr1)
          type is(integer(kind=8))
           if (A/=trg2) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,171
          k=0
        select type(A=>obj2%ptr2)
          type is(REAL(kind=8))
           if (A/=rtar1) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,172
          k=0
         select type(A=>obj2%ptr3)
          type is(REAL(KIND=8))
           if (A/=rtar3) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,173
          k=0
        select type(A=>obj2%ptr4)
          type is(LOGICAL(KIND=4))
           if (A.neqv.ltar) print *,101
           k=1
          class default
             print *,"Default"
        end select

end 
end module
      use m2
        k=0
        select type(ptr)
          type is(integer(kind=4))
           if (ptr/=trg) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,176
        call sub()
        call sub2()
        call sub3()
            print*,"PASS"
        contains 
         subroutine sub() 
         select type(ptr1)
          type is(integer(kind=8))
           if (ptr1/=trg2) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,178
          k=0
        select type(ptr2)
          type is(REAL(kind=8))
           if (ptr2/=rtar1) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,179
          k=0
         select type(ptr3)
          type is(REAL(KIND=8))
           if (ptr3/=rtar3) print *,101
           k=1
          class default
             print *,"Default"
        end select
        if (k/=1) print *,188
          k=0
        select type(ptr4)
          type is(LOGICAL(KIND=4))
           if (ptr4.neqv.ltar) print *,101
           k=1
          class default
             print *,"Default"
        end select
         end subroutine
        end

