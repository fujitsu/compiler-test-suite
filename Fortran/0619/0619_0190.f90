module m1
 type base
   integer::a
 end type
 type,extends(base):: ext
   integer ::b
 end type
 end
subroutine s1
use m1
 type (base),pointer::bt
 type (ext),pointer::et
 integer            ::n
 class(*),pointer::ac
 class(base),pointer::bc
 class(ext),pointer::ec
 allocate(base::ac)
 allocate(bt,et,bc,ec)
call sbc(ec)
call sac(n)
contains
subroutine sbc(bc)
 class (base)::bc
end subroutine
subroutine sec(ec)
 class (ext)::ec
end subroutine
subroutine sac(ac)
 class (*)::ac
end subroutine
end
call s1
print *,'pass'
end
