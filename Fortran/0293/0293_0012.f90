module m01
type a
 integer::x(2)
end type
contains
subroutine s(v61)
type(a),allocatable::v61(:)
allocate(v61(2))
end subroutine
end
use m01
type(a),allocatable::v61(:)
call s(v61)
print *,'pass'
end
