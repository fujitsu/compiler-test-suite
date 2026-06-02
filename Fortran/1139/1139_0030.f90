module m1
  type,abstract:: x0
  end type
  type,abstract:: y0
  end type
  type,abstract:: z0
  end type
  type,extends(x0)::x10
     class(y0),allocatable::x11
  end type
  type,extends(y0)::y10
     class(z0),allocatable::y11
  end type
end
subroutine s1
use m1
class(x0),allocatable::v
class(x0),allocatable::e
allocate(x10::e)

k=0
select type(v)
 type is(x10)
   print *,1001
 class default
  k=1
end select
if (k/=1) print *,1002

!allocate(v,source=e)
end
call s1
print *,'sngg280k : pass'
end

