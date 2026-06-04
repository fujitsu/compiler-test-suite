module m0
  type t
    integer::num
  contains
        procedure,nopass :: f4
  end type 
contains
    subroutine f4  (lhs, rhs) 
        class(t), intent(in) :: lhs
        class(t), intent(in) :: rhs
    end 
end
use m0
class(t),pointer :: a1,a2
allocate(a1,a2,source=t(2))
call   a1%f4(a1,a2)
print *,'sngg054p : pass'
end

