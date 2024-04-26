module m1
 type t0
   integer:: v00
 end type
 type,extends(t0):: t1
   integer:: v01
 end type
 type,extends(t1):: t2
   integer:: v02
 end type
 class(t0),allocatable:: v
end
subroutine s1
use m1
allocate(v)
if (sizeof(v)/=4) print *,101
deallocate(v)
allocate(t1::v)
if (sizeof(v)/=8) print *,102
deallocate(v)
allocate(t2::v)
if (sizeof(v)/=12) print *,103
end
use m1
call s1
if (sizeof(v)/=12) print *,104
print *,'pass'
end
