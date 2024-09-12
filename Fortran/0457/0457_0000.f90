module m1
interface gen
   procedure :: pls_p
end interface
type x
   integer:: x1=1000
end type
  type(x)    ::z0,z1
contains
  function pls_p(a1,a2) result(r)
   type(x),intent(in)::a1,a2
   type(x)           ::r
   r%x1=a1%x1+a2%x1+100
 end function
end module


 subroutine z
use m1
  z1=gen(z0,z1)
  if (z1%x1/=2100) print *,601
 end subroutine
call z
print *,'pass'
end
