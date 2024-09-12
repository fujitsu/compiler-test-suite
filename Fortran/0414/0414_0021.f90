module mod1
  type ty10(ii)
    integer,kind::ii=20
    integer :: array(ii)=1
  end type
  type ::ty1(jj)
    integer,kind::jj=20
    type(ty10(20)),pointer :: str(:)
    type(ty10(30)),allocatable :: str2(:)
  end type
contains
function afun()
type (ty1(10)),pointer ::afun
call sub(afun)
end function
subroutine sub(afun)
type (ty1(10)),pointer ::afun
allocate(afun)
end subroutine
end
use mod1
TYPE(ty1(10)),pointer :: xxx
xxx=>afun()
allocate(xxx%str(10))
allocate(xxx%str2(10))
if (xxx%str(1)%array(1).ne.1) print *,'err'
if (xxx%str(1)%array(20).ne.1) print *,'err'
if (size(xxx%str(1)%array).ne.20) print *,'err'
if (xxx%str2(1)%array(1).ne.1) print *,'err'
if (xxx%str2(1)%array(30).ne.1) print *,'err'
if (size(xxx%str2(1)%array).ne.30) print *,'err'
print *,'pass'
end
