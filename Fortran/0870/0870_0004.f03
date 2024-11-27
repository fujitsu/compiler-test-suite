module m1
  type x
     integer::x0
  end type
  type ,extends(x):: y
     integer::y0
  end type
  type::xx
     class(x),allocatable::x1(:)
  end type
  type(xx)::v,z
   class(x),allocatable::w(:)
 contains
  subroutine s1
  allocate( z%x1(2),source=y(1,2))

  v=z
  k=0
  select type(p=>v%x1)
   type is(y)
    k=1
    if (any(p%x0/=1)) print *,1001
    if (any(p%y0/=2)) print *,1002
  end select
  if (k/=1) print *,1003

  w=y(1,2)
  k=0
  select type(w)
   type is(y)
    k=1
    if (any(w%x0/=1)) print *,1011
    if (any(w%y0/=2)) print *,1012
  end select
  if (k/=1) print *,1013
  end subroutine
  end
use  m1
call s1
print *,'pass'
end
