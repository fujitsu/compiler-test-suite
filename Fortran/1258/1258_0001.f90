module m1
 type x
   integer(8)::d1
   type(x),allocatable::n
 end type
contains
  recursive subroutine s(v,k)
     class(*),allocatable::v
     select type(p=>v)
       type is(x)
           !print *,k
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

    print *,'sngg584t : pass'
end
