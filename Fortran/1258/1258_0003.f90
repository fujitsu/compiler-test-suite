module m1
  type x1
   integer(1)::d=1
  end type
  type x2
   integer(2)::d=2
  end type
  type x3
   integer(4)::d=4
  end type
  type x4
   integer(8)::d=8
  end type
 type x
   integer(8)::d1
   type(x1),allocatable::n1
   type(x2),allocatable::n2
   type(x3),allocatable::n3
   type(x4),allocatable::n4
 end type
contains
  recursive subroutine s(v,k)
     class(*)::v
         k=k+1
     select type(v)
       type is(x)
         call s(v%n1,k)
         call s(v%n2,k)
         call s(v%n3,k)
         call s(v%n4,k)
       type is(x1)
         call s(v%d,k)
       type is(x2)
         call s(v%d,k)
       type is(x3)
         call s(v%d,k)
       type is(x4)
         call s(v%d,k)
       type is(integer(1))
         if (v/=1) print *,2001
       type is(integer(2))
         if (v/=2) print *,2002
       type is(integer(4))
         if (v/=4) print *,2003
       type is(integer(8))
         if (v/=8) print *,2004
     end select
  end
end
use m1
     class(x),allocatable::v
     allocate(x::v)
     allocate(v%n1)
     allocate(v%n2)
     allocate(v%n3)
     allocate(v%n4)

     k=1
     call s(v,k)

    print *,'sngg586t : pass'
end
