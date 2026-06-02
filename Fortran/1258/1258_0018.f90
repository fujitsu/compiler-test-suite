module m1
 type x
   integer(8)::d1
 end type
type,extends(x)::xe
   integer(8)::d2=2
   class(*),allocatable::d3(:)
 end type
contains
  recursive subroutine s(v,k)
     class(*),allocatable::v(:)
     call sub
   contains
     recursive subroutine sub
     select type(v)
       type is(xe)
         if (   (v(1)%d2/=2)) print *,2920
         if (   (v(2)%d2/=2)) print *,2921
         k=k+1
         if (k>2) return
         call s(v(2)%d3,k)
     end select
    end
  end
end
use m1
     class(*),allocatable::v(:)
     allocate(xe::v(2))
select type(v)
 type is(xe)
     allocate(xe::v(2)%d3(2))
end select
     k=1
     call s(v,k)

    print *,'sngg601t : pass'
end
