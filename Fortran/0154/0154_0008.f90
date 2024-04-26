module m1
  type x(k1)
    integer,kind:: k1=4
    integer(k1):: a1
  end type
end
subroutine s1
use m1
implicit type(x(2))(a)
if (kind(aa%a1)/=2) print *,101
if (     aa%k1/=2) print *,121
end
call s1
print *,'pass'
end
