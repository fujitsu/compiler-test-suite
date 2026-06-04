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
         select type(z=>d)
           type is(b)
             allocate(z%bbb)
             if (k>2) return
             k=k+1
             call s(z%bbb,k)
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
     print *,'sngg316p : pass'
     end 

