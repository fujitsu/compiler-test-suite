module m1
 type x
   integer(8)::d1
 end type
type,extends(x)::xe
   integer(8)::d2=2
   class(x),allocatable::d3
 end type
contains
  recursive subroutine s(v,k)
     class(x),allocatable::v
     call sub
   contains
     recursive subroutine sub
     select type(v)
       type is(xe)
         if (v%d2/=2) print *,2920
         k=k+1
         if (k>2) return
         call s(v%d3,k)
     end select
    end
  end
end
use m1
     class(x),allocatable::v
     allocate(xe::v)
select type(v)
 type is(xe)
     allocate(xe::v%d3)
end select
     k=1
     call s(v,k)

    print *,'sngg599t : pass'
end
