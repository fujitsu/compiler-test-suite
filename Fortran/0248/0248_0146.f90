module m1
contains
subroutine sub(d,arr)
  integer , optional :: arr(3,4)
  integer :: d
  if(present(arr) .neqv. .false. .or. d/=2) print*,201

end subroutine
end module

use m1
integer, pointer :: ptr(:,:)
call sub(arr=NULL(),d=2) 
call sub(2,NULL(ptr))
call sub(2)
call sub(2,NULL(ptr))
print*,'pass'
end
