module m1
 type x
   integer(8)::d1
   class(x),allocatable::d2
 end type
type,extends(x)::xe
   integer(8)::d3
 end type
contains
  recursive subroutine s(v,k)
     class(x)::v
  select type(q=>v)
   type is(xe)
         k=k+1
         if (k>2) return
         call s(v,k)
         call s(v%d2,k)
         call s(q,k)
         call s(q%d2,k)
     select type(p=>v%d2)
       type is(xe)
         call s(v,k)
         call s(v%d2,k)
         call s(q,k)
         call s(q%d2,k)
         call s(p   ,k)
     end select
   end select
  end
end
use m1
     class(x),allocatable::v
     allocate(xe::v)
     allocate(xe::v%d2)
     k=1
     call s(v,k)

    print *,'sngg591t : pass'
end
