use iso_c_binding,only:c_int
interface
  subroutine s(d,n) bind(c)
  import:: c_int
  integer(c_int):: d(..)
  integer(c_int),value::n
  end subroutine
end interface
integer(c_int):: a(2,3)=reshape([1,2,3,4,5,6],[2,3])
call s(a(:,::2),1)
call s(a(:,:2),0)
print *,'pass'
end
subroutine chk(k1,k2,k3) bind(c)
use iso_c_binding,only:c_int
integer(c_int):: k1,k2,k3
if (k1/=k2) print *,k1,k2,k3
end
  subroutine s(d,n) bind(c)
use iso_c_binding,only:c_int
  integer(c_int):: d(..)
  integer(c_int),value::n
  end subroutine
