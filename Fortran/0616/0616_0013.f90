module m1
  type,private:: x2
    integer::k0
  end type
  type x1
    integer::k1
    type (x2):: k2
    integer:: k3
  end type
  type (x1):: v
end
subroutine s1
use m1
v%k1=1
v%k2%k0=2
v%k3=3
if (v%k1/=1)print *,101
if (v%k2%k0/=2)print *,102
if (v%k3/=3)print *,103
end
call s1
print *,'pass'
end
