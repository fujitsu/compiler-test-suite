module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type,extends(e)::ee
     integer(8),allocatable::e2
 end type
contains
subroutine s1()
     class(ee),allocatable::w(:)
     type (ee),allocatable::a (:)
   allocate(ee::a(2))
  call ss
   allocate(w,mold=a)
if (size(w)/=2) print *,6273
end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(4,*) d
  deallocate(d)
end
end
use m1
call s1()
     print *,'sngg649t : pass'
     end
