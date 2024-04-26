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
if (storage_size(v)/=4*8) print *,101,storage_size(v)
deallocate(v)
allocate(t1::v)
if (storage_size(v)/=8*8) print *,102,storage_size(v)
deallocate(v)
allocate(t2::v)
if (storage_size(v)/=12*8) print *,103,storage_size(v)
end
use m1
call s1
if (storage_size(v)/=12*8) print *,104,storage_size(v)
if (sizeof      (v)/=12) print *,105,sizeof(v)
print *,'pass'
end
