module m1
contains
subroutine sub(arr)
  integer , optional :: arr(:)
  if(present(arr) .eqv. .false.) print*,'pass'
end subroutine
end module

use m1
integer, allocatable :: ptr(:)
call sub(NULL())
call sub(NULL(ptr))
call sub()

end
