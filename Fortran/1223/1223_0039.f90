module mod1
  type base
	integer :: ii=1
	integer :: jj
  end type
 
  type,extends(base) :: deriv
	integer :: kk
  end type
 
  type new
	class(base),pointer :: cptr(:,:) => NULL()
  end type
  type xnew
     type(new)::x1
  end type
contains
subroutine s0
  type(xnew) :: a1
  type(base) :: b1
  type(deriv) :: c1

 if (associated(a1%x1%cptr)) print *,201
 if (b1%ii/=1) print *,202
 if (c1%ii/=1) print *,203
end

end module

subroutine s1
  use mod1
  type(new) :: a1
  type(base) :: b1
  type(deriv) :: c1

 if (associated(a1%cptr)) print *,101
 if (b1%ii/=1) print *,102
 if (c1%ii/=1) print *,103
end
use mod1
call s0
call s1
print *,'sngg135t : pass'
end
