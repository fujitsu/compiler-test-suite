module mod
  type ty10
    integer,allocatable :: array(:)
  end type
  type ::ty1
    type(ty10) :: str
  end type
contains
  function afun()
    TYPE(ty1) :: afun
    call sss(afun)
    afun%str%array=1
  end function
subroutine sss(bfun)
TYPE(ty1),intent(out) :: bfun
allocate(bfun%str%array(30))
end subroutine
end

use mod
TYPE(ty1) ::b
b=afun()
if (b%str%array(1 ).ne.1 ) print *,'err6'
print *,'pass'
end
