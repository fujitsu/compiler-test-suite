module m1
  type x
    integer,allocatable::x1
  end type
  type,extends(x)::e
    integer,allocatable::x2
  end type
end
module m2
  interface 
    subroutine s(d)
      use m1
      class(x)::d
    end subroutine
  end interface 
end
module m3
  use m2
  use m1
  class(x),allocatable::a,b
contains
   subroutine s1
  class(x),allocatable::aa,bb
  allocate(e::aa)
  select type(aa)
    type is(e)
     allocate(aa%x1,source=1)
     allocate(aa%x2,source=2)
  end select
  allocate(bb,source=aa)
  select type(bb)
    type is(e)
     bb%x1=11
     bb%x2=12
  end select
  select type(aa)
    type is(e)
     if (aa%x1/=1)print *,1001
     if (aa%x2/=2)print *,1002
  end select
  deallocate(aa,bb)
end subroutine
end
subroutine s0
use m3
  allocate(e::a)
  select type(a)
    type is(e)
     allocate(a%x1,source=1)
     allocate(a%x2,source=2)
  end select
  allocate(b,source=a)
  select type(b)
    type is(e)
     b%x1=11
     b%x2=12
  end select
  select type(a)
    type is(e)
     if (a%x1/=1)print *,2001
     if (a%x2/=2)print *,2002
  end select
  call s1
  deallocate(a,b)
end
call s0
print *,'sngg463p : pass'
end
