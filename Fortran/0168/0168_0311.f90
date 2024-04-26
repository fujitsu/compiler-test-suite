module mod1
  type ty10(ii)
    integer(8),kind::ii=20
    integer(8) :: array(ii)=(/(k,k=1,ii)/)
  end type
  type ::ty1
    type(ty10(20_8)) :: str
    type(ty10(30_8)) :: str2
  end type
  TYPE(ty1) :: xxx
end
use mod1
if (xxx%str%array(1).ne.1) print *,'err'
if (xxx%str%array(20).ne.20) print *,'err'
if (size(xxx%str%array).ne.20) print *,'err'
if (xxx%str2%array(1).ne.1) print *,'err'
if (xxx%str2%array(30).ne.30) print *,'err'
if (size(xxx%str2%array).ne.30) print *,'err'
print *,'pass'
end
