module m1
contains
subroutine s(c)
class(*),allocatable::c

     deallocate(c)
     allocate(character(len=3)::c)
      deallocate(c)
end
end
use m1
class(*),allocatable::c
     allocate(character(len=3)::c)

call s(c)
print*,"sngg741q : pass"
end
