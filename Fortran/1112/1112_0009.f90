module m0
    type :: t
        integer:: num
    contains
    end type 
  interface f4
    module recursive function f4  (lhs, rhs,k,n,m) result(f)
        class(t), intent(in) :: lhs
        class(t), intent(in) :: rhs
        integer , intent(in) :: k,n,m
        integer :: f
    end function 
    procedure f
  end  interface
  interface s
     module subroutine s
     end
  end  interface
contains
 function f()
  f=3
 end
end
submodule(m0) smod
  type,extends(t)::t2
  contains
        procedure,nopass :: f4
  end type 
contains
    module recursive function f4  (lhs, rhs,k,n,m) result(f)
        class(t), intent(in) :: lhs
        class(t), intent(in) :: rhs
        integer , intent(in) :: k,n,m
        integer :: f
      procedure(f4),pointer::w
class(t),pointer :: a1,a2
allocate(a1,a2,source=t(1))
      f =lhs%num+rhs%num+k+n+m
      w=>f4
      if (f==10000) then
        if (      w (a1,a2,1,2,3)/=8) print *,'ng1005'
      endif
    end 
end
submodule(m0:smod) tmod
contains
     module subroutine s
class(t2),pointer :: a1,a2
allocate(a1,a2,source=t2(1))
if (      f4(a1,a2,1,2,3)/=8) print *,'ng5'
if (   a1%f4(a1,a2,1,2,3)/=8) print *,'ng6'
     end
end

use m0
class(t),pointer :: a1,a2
allocate(a1,a2,source=t(1))
if (   f4(a1,a2,1,2,3)/=8) print *,'ng2'
if (   f4(           )/=3) print *,'ng12'
call s
print *,'sngg077p : pass'
end

