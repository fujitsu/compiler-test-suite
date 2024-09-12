module m1
  type      efk
    integer(2_2)::qq (1,83)
  end type
type(efk) ::XSMSz(2)
contains
subroutine s1

type(efk) ::XSMS(2,4)
XSMS(2,4)%qq(1,83)=1
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (m()/=1) print *,'error'
CONTAINS
  function m()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  nooj% Y % qq(1,83)=1
  M=nooj% Y % qq(1,83)
  end function 
end subroutine
end
use m1
call s1
print *,'pass'
end 
