module mod
  type ty1
    integer(8) ,allocatable         :: chk( : )
  end type
contains
  function afun()
    TYPE(ty1) :: afun
call xxx(afun)
    afun%chk=1
    if (1.eq.2) print *,'mod.afun print :','err'
  end function
subroutine xxx(aaa)
TYPE(ty1) :: aaa
allocate(aaa%chk(1))
end subroutine
end

use mod
TYPE(ty1) ::b
allocate(b%chk(1))
b=afun()
print *,'pass'
end
