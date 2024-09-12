module m1
  type      efk
    integer(2_2)::qq (1,83)
  end type
contains
subroutine s3
type(efk) ::XSMSz(2)

type(efk) ::XSMS(2,4)
XSMS(2,4)%qq(1,83)=1
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
XSMSz(2)%qq(1,83)=1
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (m()/=1) print *,'error'
if (mm()/=1) print *,'error'
if (mx()/=1) print *,'error'
CONTAINS
  function mx()
    type(efk) Y
  Y % qq(1,83)=1
  mx=Y % qq(1,83)
  end function 
  function m()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  nooj% Y % qq(1,83)=1
  M=nooj% Y % qq(1,83)
  end function 
  function mm()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  nooj% Y % qq(1,83)=1
  mm=nooj% Y % qq(1,83)
  end function 
end subroutine
subroutine s2
type(efk) ::XSMSz(2)

type(efk) ::XSMS(2,4)
XSMS(2,4)%qq(1,83)=1
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
XSMSz(2)%qq(1,83)=1
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (m()/=1) print *,'error'
if (mm()/=1) print *,'error'
if (mx()/=1) print *,'error'
CONTAINS
  function m()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  nooj% Y % qq(1,83)=1
  M=nooj% Y % qq(1,83)
  end function 
  function mx()
    type(efk) Y
  Y % qq(1,83)=1
  mx=Y % qq(1,83)
  end function 
  function mm()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  nooj% Y % qq(1,83)=1
  mm=nooj% Y % qq(1,83)
  end function 
end subroutine
subroutine s1
type(efk) ::yXSMS(2,4)
type(efk) ::yXSMSz(2)

yXSMS(2,4)%qq(1,83)=1
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
yXSMSz(2)%qq(1,83)=1
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (m()/=1) print *,'error'
if (mm()/=1) print *,'error'
if (mx()/=1) print *,'error'
CONTAINS
  function m()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  nooj% Y % qq(1,83)=1
  M=nooj% Y % qq(1,83)
  end function 
  function mm()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  nooj% Y % qq(1,83)=1
  mm=nooj% Y % qq(1,83)
  end function 
  function mx()
    type(efk) Y
  Y % qq(1,83)=1
  mx=Y % qq(1,83)
  end function 
end subroutine
end
use m1
call s1
call s2
call s3
print *,'pass'
end 
