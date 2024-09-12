module mod1
  type ty10(ii)
    integer,kind::ii=30
    integer :: array(ii)=(/(iii,iii=1,ii)/)
  end type
end

module mod
interface
subroutine sub2(ca)
use mod1
TYPE(ty10(90)) ::ca
end subroutine
end interface
end

subroutine s1
use mod
use mod1
TYPE(ty10(90)) ::ca
if (any(ca%array/=[(iii,iii=1,90)])) print *,102
end
call s1
print *,'pass'
end
