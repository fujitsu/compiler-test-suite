module m0
    type :: t
        integer:: num
    contains
    end type 
  interface
    module function f4  (lhs, rhs,k,n,m) result(f)
        class(t), intent(in) :: lhs
        class(t), intent(in) :: rhs
        integer , intent(in) :: k,n,m
        integer :: f
    end function 
    module subroutine s
    end subroutine
  end  interface
end
submodule(m0) smod
  type,extends(t)::t2
  contains
        procedure,nopass :: f4
  end type 
contains
    module function f4  (lhs, rhs,k,n,m) result(f)
        class(t), intent(in) :: lhs
        class(t), intent(in) :: rhs
        integer , intent(in) :: k,n,m
        integer :: f
      f =lhs%num+rhs%num+k+n+m
    end 
end
submodule(m0:smod) tmod
contains
module subroutine s
class(t2),pointer :: a1,a2
allocate(a1,a2,source=t2(2))
if (   a1%f4(a1,a2,1,2,3)/=10) print *,'ng3'
end subroutine
end

use m0
class(t),pointer :: a1,a2
allocate(a1,a2,source=t(1))
if (   f4(a1,a2,1,2,3)/=8) print *,'ng2'
call s
print *,'sngg053p : pass'
end

