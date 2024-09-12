module m1
  type      efk
    integer(2_2)::qq (1,83)
  end type
contains
subroutine s3
type(efk) ::XSMSz(2)

type(efk) ::XSMS(2,4)
namelist /nam/XSMSz,XSMS
XSMS(2,4)%qq(1,83)=1
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
XSMSz(2)%qq(1,83)=1
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (m()/=1) print *,'error'
do k=1,2
  XSMSz(k)%qq=2
  do kk=1,4
    XSMS(k,kk)%qq=2
  end do
end do
write(1,nam)
CONTAINS
  function m()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  namelist /nam2/ nooj
  nooj% Y % qq(1,83)=1
  M=nooj% Y % qq(1,83)
  nooj% Y % qq=1
  write(1,nam2)
  end function 
end subroutine
subroutine s2
type(efk) ::XSMSz(2)

type(efk) ::XSMS(2,4)
namelist /nam/XSMSz,XSMS
XSMS(2,4)%qq(1,83)=1
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (XSMS(2,4)%qq(1,83)/=1)print *,'error-2'
XSMSz(2)%qq(1,83)=1
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (XSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (m()/=1) print *,'error'
do k=1,2
  XSMSz(k)%qq=2
  do kk=1,4
    XSMS(k,kk)%qq=2
  end do
end do
write(1,nam)
CONTAINS
  function m()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  namelist /nam2/ nooj
  nooj% Y % qq(1,83)=1
  M=nooj% Y % qq(1,83)
  nooj% Y % qq=1
  write(1,nam2)
  end function 
end subroutine
subroutine s1
type(efk) ::yXSMS(2,4)
type(efk) ::yXSMSz(2)
namelist /nam/yXSMSz,yXSMS

yXSMS(2,4)%qq(1,83)=1
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
if (yXSMS(2,4)%qq(1,83)/=1)print *,'error-2'
yXSMSz(2)%qq(1,83)=1
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (yXSMSz(2)%qq(1,83)/=1)print *,'error-2'
if (m()/=1) print *,'error'
do k=1,2
  yXSMSz(k)%qq=2
  do kk=1,4
    yXSMS(k,kk)%qq=2
  end do
end do
write(1,nam)
CONTAINS
  function m()
  type::kc
    type(efk) Y
  end type 
  type (kc) nooj
  namelist /nam2/ nooj
  nooj% Y % qq(1,83)=1
  M=nooj% Y % qq(1,83)
  nooj% Y % qq=1
  write(1,nam2)
  end function 
end subroutine
end
use m1
call s1
call s2
call s3
print *,'pass'
end 
