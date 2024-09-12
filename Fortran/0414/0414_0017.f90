module mod
  type ty1
    integer(8) ,allocatable         :: chk( : )
  end type
end

  function afun()
use mod
    TYPE(ty1) :: afun,afun1
entry afun1()
call xxx(afun)
    afun%chk=1
    if (1.eq.2) print *,'mod.afun print :','err'
  end function
subroutine xxx(aaa)
use mod
TYPE(ty1) :: aaa
allocate(aaa%chk(1))
end subroutine

use mod
interface
  function afun1()
use mod
    TYPE(ty1) :: afun1
  end function
end interface
TYPE(ty1) ::b
allocate(b%chk(1))
b=afun1()
print *,'pass'
end
