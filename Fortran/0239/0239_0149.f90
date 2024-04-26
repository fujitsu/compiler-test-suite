module m1
  type x2
     integer::x1
    contains
     final:: e
  end type
   integer:: ef=0
  contains
 elemental subroutine e(d)
 type(x2),intent(in)::d
interface 
  pure subroutine chk
  end subroutine
end interface
 call chk
 end subroutine
end
subroutine ss
use m1
class(x2),allocatable::ve(:,:)
allocate(ve(3,2))
ve%x1=1

deallocate(ve)
if (ef/=6) print *,502,ef
end
call ss
print *,'pass'
end

  subroutine chk
 use m1
ef=ef+1
  end subroutine
