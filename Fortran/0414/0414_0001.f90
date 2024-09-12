module mod
  type ty1
    integer(8)          :: chk( 10 )=1
  end type
contains
  function afun()
    TYPE(ty1) :: afun
  end function
end

use mod
TYPE(ty1) ::b
if (1.eq.2) print *,b
if (1.eq.2) print *,afun()
print *,'pass'
end
