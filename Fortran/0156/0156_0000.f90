module m1
  type x(k1,k2)
    integer,kind:: k1=4,k2=8
    integer(k1):: a1
    integer(k2):: a2
  end type
end
subroutine s1
use m1
implicit type(x)(a)
type(x):: b
if (kind(aa%a1)/=4) print *,101,kind(aa%a1)
if (kind(aa%a2)/=8) print *,102,kind(aa%a2)
if (kind(b%a1)/=4) print *,111
if (kind(b%a2)/=8) print *,112
if (     aa%k1/=4) print *,121,aa%k1
if (     aa%k2/=8) print *,122,aa%k2
if (      b%k1/=4) print *,131
if (      b%k2/=8) print *,132
aa%a1=1
aa%a2=2
b%a1=11
b%a2=12
if ((aa%a1)/=1) print *,201
if ((aa%a2)/=2) print *,202
if ((b%a1)/=11) print *,211
if ((b%a2)/=12) print *,212
end
call s1
print *,'pass'
end
