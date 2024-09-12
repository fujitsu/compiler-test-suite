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
    afun%str%array=(/(iii,iii=1,30)/)
  end function
subroutine sss(afun)
    TYPE(ty1),intent(out) :: afun
    allocate(afun%str%array(30))
end subroutine
subroutine subb(i)
integer,allocatable :: i
TYPE(ty1) ::bbb
bbb=afun()
if (bbb%str%array(1 ).ne.1 ) print *,'err6'
if (bbb%str%array(20).ne.20) print *,'err7'
if (bbb%str%array(30).ne.30) print *,'err8'
print *,'pass'
end subroutine
end

use mod
integer,allocatable :: i
call subb(i)
end
