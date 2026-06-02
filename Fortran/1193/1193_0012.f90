     module m1
       type    b
         integer(8)::d1
         integer,allocatable::  b
         class(b),allocatable:: bb
         type (b),allocatable:: bbb
       end type
       contains
       recursive subroutine s(d,k)
         class(*)::d
!print *,100
         select type(d)
           type is(b)
             allocate(d%bbb)
!print *,210
             if (k>2) return
             k=k+1
!print *,220
             call xs(d%bbb,k)
           class default
            print *,'error 300'
         end select
       end
       recursive subroutine xs(d,k)
         class(*)::d
!print *,100
         select type(d)
           type is(b)
             allocate(d%bbb)
!print *,210
             if (k>2) return
             k=k+1
!print *,220
             call s(d%bbb,k)
           class default
            print *,'error 300'
         end select
       end
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1
     allocate(b::v1)
     k=1
     call s(v1,k)
     end

     call s1
     print *,'sngg298p : pass'
     end 

