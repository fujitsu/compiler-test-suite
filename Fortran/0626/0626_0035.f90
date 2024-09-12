module m1
type base
  integer::x1
end type
type,extends(base)::ext
  integer::x2
end type
contains
subroutine sbc(cv)
class(*)::cv(:)
select type(cv)
class is(base)
 if (cv(2)%x1/=1)print *,101,cv%x1
class is(ext)
 if (cv(2)%x1/=1)print *,102,cv%x1
 if (cv(2)%x2/=2)print *,103,cv%x2
class default
 print *,104
end select
end subroutine
end
subroutine s1
use m1
class (base),allocatable::tbv(:)
class (ext),allocatable::tev(:)
i3=3
allocate(tbv(3))
tbv(i3)%x1=1
call sbc(tbv(1:i3:2))
deallocate(tbv)
allocate(ext::tbv(3))
tbv(i3)%x1=1
select type(tbv)
class is(ext)
tbv(i3)%x2=2
end select
call sbc(tbv(1:i3:2))

allocate(tev(3))
tev(i3)%x1=1
tev(i3)%x2=2
call sbc(tev(1:i3:2))
end
call s1
print *,'pass'
end
