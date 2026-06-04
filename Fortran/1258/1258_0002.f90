module m1
 type x
   integer(8)::d1
 end type
contains
  recursive subroutine s(v,k)
     class(*)::v
     select type(v)
       type is(x)
         k=k+1
         if (k>2) return
         call s(v,k)
     end select
  end
end
use m1
     class(*),allocatable::v
     allocate(x::v)
     k=1
     call s(v,k)

    print *,'sngg585t : pass'
end
