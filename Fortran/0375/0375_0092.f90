module m1
  integer,bind(c)::ijklm
contains
subroutine s1(p)
use,intrinsic:: iSo_c_binding
type(c_ptr)::p
ijklm=ijklm+2
end subroutine
end
module m2
  integer,bind(c)::ijklmn
contains
subroutine s2(p)
use Iso_c_binding
type(c_ptr)::p
ijklmn=ijklmn+1
end subroutine
end
module m3
  integer,bind(c)::ijk
contains
subroutine s3(p)
use iso_C_binding
type(c_ptr)::p
ijk=ijk+3
end subroutine
end
use m1
use m2
use m3
use iso_c_binding
type(c_ptr)::p
p=c_null_ptr 
ijk=1
ijklm=1
ijklmn=1
call s1(p)
call s2(p)
call s3(p)
if (ijk/=4) print *,'fail'
if (ijklm/=3) print *,'fail'
if (ijklmn/=2) print *,'fail'
print *,'pass'
end
