module pm
  type ty
    sequence
    integer :: x=10
    character(10) :: c='1234567890'
  end type
end

module m
  use pm
  type(ty) :: a,b,c,x
  equivalence(a,x)
end

use m
if (a%x /= 10) print *,131
if (a%c /= '1234567890') print *,132
if (x%x /= 10) print *,133
if (x%c /= '1234567890') print *,134
if (b%x /= 10) print *,135
if (b%c /= '1234567890') print *,136
if (c%x /= 10) print *,137
if (c%c /= '1234567890') print *,138
call sub
if (a%x /= 20) print *,231
if (a%c /= '0987654321') print *,232
if (x%x /= 20) print *,233
if (x%c /= '0987654321') print *,234
print *,'pass'
end

subroutine sub
  use m
  a%x = 20
  x%c = '0987654321'
end
