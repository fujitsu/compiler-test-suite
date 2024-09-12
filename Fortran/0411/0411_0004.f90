module mod
  type ty1
    integer(8),allocatable  :: chk(:)
  end type
contains
  function afun()
    TYPE(ty1) :: afun
    call ss(afun)
  end function
subroutine ss(a)
    TYPE(ty1) :: a
    allocate( a% chk(1)) 
end subroutine
end

use mod
TYPE(ty1) ::b
b=afun()
print *,'pass'
end
