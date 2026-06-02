module mod1
  type base
	integer :: ii=1
	integer :: jj
  end type
 
  type,extends(base) :: deriv
	integer :: kk=10
  end type
 
  type new
	class(base),pointer :: cptr(:,:) => NULL()
  end type
end module

subroutine s1
  use mod1
  type(new) :: a1
  type(base) :: b1
  type(deriv) :: c1

 if (associated(a1%cptr)) print *,101
 if (b1%ii/=1) print *,102
 if (c1%ii/=1) print *,103
 if (c1%kk/=10) print *,104
end
call s1
print *,'sngg134t : pass'
end
