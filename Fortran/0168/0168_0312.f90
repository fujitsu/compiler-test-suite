module mod1
  type ty10(ii)
    integer,kind::ii=20
    integer :: array(ii)=(/(k,k=1,ii)/)
  end type
  type ::ty1
    type(ty10(20)) :: str
    type(ty10(30)) :: str2
  end type
  TYPE(ty1) :: xxx
end
use mod1
print *,'pass'
end
