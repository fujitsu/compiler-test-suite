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
print *,'pass'
end
