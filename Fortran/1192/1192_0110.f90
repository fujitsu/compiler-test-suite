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
             allocate(z%bb)
             allocate(z%bbb)
             allocate(z%b,source=k)
             if (k>2) return
             k=k+1
             call s(z%bb,k)
             k=k+1
             call s(z%bbb,k)
         end select
       end
       recursive subroutine t(d,k)
         class(*)::d
         select type(z=>d)
           type is(b)
             z%b=-1
             if (k>2) return
             k=k+1
             call t(z%bb,k)
             k=k+1
             call t(z%bbb,k)
         end select
       end
       recursive subroutine c(d,k)
         class(*)::d
         select type(z=>d)
           type is(b)
             if (z%b/=k) print *,8001,z%b,k
             if (k>2) return
             k=k+1
             call c(z%bb,k)
             k=k+1
             call c(z%bbb,k)
         end select
       end
     end
     
     subroutine s1
     use m1
     class(*),allocatable :: v1,v2
     allocate(b::v1)
     k=1
     call s(v1,k)
     allocate(v2,source=v1)
     k=1
     call t(v2,k)
     k=1
     call c(v1,k)
     deallocate(v1)
     end

     call s1
     print *,'sngg322p : pass'
     end 

