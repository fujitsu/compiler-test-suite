module m1
 type x
   integer(8)::d1
 end type
type,extends(x)::xe
   integer(8)::d2
   type(x)::d3
 end type
contains
  recursive subroutine s(v,k)
     class(x)::v
     select type(v)
       type is(xe)
         k=k+1
         if (k>2) return
         call s(v,k)
         call s(v%d3,k)
     end select
  end
end
use m1
     class(x),allocatable::v
     allocate(xe::v)
     k=1
     call s(v,k)

    print *,'sngg597t : pass'
end
