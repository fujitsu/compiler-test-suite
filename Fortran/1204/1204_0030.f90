module m1
type x
class(*),allocatable::c
end type
contains
subroutine s(w)
type(x)::w

     deallocate(w%c)
     allocate(character(len=3)::w%c)
      deallocate(w%c)
end
end
use m1
type(x)::w
     allocate(character(len=3)::w%c)

call s(w)
print*,"sngg754q : pass"
end
