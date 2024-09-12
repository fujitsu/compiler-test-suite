module m1
type base
  integer::x1
end type
type,extends(base)::ext
  integer::x2
end type
type z
 integer::y
 class(*),pointer::pb(:)
end type
 class(*),pointer::tb(:)
contains
subroutine sbc(cv)
type(z),target::cv
class(*),pointer     ::tmp(:)
tmp=>cv%pb
select type(tmp)
class is(base)
 if (tmp(2)%x1/=1)print *,101,tmp%x1
class is(ext)
 if (tmp(2)%x1/=1)print *,102,tmp%x1
 if (tmp(2)%x2/=2)print *,103,tmp%x2
class default
 print *,104
end select
end subroutine
end
subroutine s1
use m1
type(z),target::t
class(*),pointer     ::tmp(:)
i3=3
allocate(base::tb(3))
select type(tb)
class is(base)
tb(i3)%x1=1
end select
t%pb=>tb(1:3:2)
call sbc(t)
deallocate(t%pb)
allocate(ext::tb(3))
tmp=>tb
select type(tmp)
class is(ext)
tmp(i3)%x1=1
tmp(i3)%x2=2
end select
t%pb=>tb(1:3:2)
call sbc(t)

end
call s1
print *,'pass'
end
