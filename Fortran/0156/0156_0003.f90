module m1
type ty(k)
 integer(8), kind:: k
 integer(8) :: arr(k+1)
end type

class(*),pointer :: obj

end module

use m1

call ss2()
 
select type(A1=>obj)
type is(ty(3))
 print*,'aa3'
type is (ty(4))
 write(10,*)'aa4'
type is (ty(2))
 print*,'aa2'
end select
print*,'pass'

contains
subroutine ss2()
use m1
type(ty(k=4)),target,save::tgt

obj=>tgt
end subroutine
end
