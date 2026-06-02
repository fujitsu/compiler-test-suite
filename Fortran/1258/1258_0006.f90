module m1
 type x
   integer(8)::d1
 end type
type,extends(x)::xe
   integer(8)::d2
 end type
contains
  recursive subroutine s(v,k)
     class(x)::v(:)
     select type(v)
       type is(xe)
         k=k+1
         if (k>2) return
         call s(v,k)
     end select
  end
end
use m1
     class(x),allocatable::v(:)
     allocate(xe::v(2))
     k=1
     call s(v,k)

    print *,'sngg589t : pass'
end
