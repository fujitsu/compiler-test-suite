module m1
  type base
    integer::x1=1
  end type
end
module m2
 use m1
 type,extends(base)::ext
   integer::x2=2
 end type
 class(base),allocatable::v
 private
 public::v,ext,set
contains
subroutine set(d)
 class(base),allocatable::d
 allocate(base::v)
end subroutine
end
use m2
call set(v)
k=0
select type(v)
  class is(ext)
   k=1
   if (v%x1/=1) print *,201
   if (v%x2/=2) print *,202
end select
if (k/=0) print *,301
print *,'sngg938q : pass'
end
