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
     class(ee),allocatable::w
     class(ee),allocatable::a 
   allocate(ee::w)
  call ss
   allocate(a,mold=w)
  k=0
   select type(a)
    type is(ee)
     if (allocated(a%e1)) print *,1001
     if (allocated(a%e2)) print *,1002
     k=1
   end select
   if (k/=1) print *,202
end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
end
use m1
call s1()
     print *,'sngg364s : pass'
     end
