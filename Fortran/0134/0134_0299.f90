module mod
 type,private:: a
    integer::a1
 end type
 type(a),public::x=a(1)
 type(a)::y=a(1)
 type(a),private::z=a(1)
contains
subroutine s
if (x%a1/=1)print *,201
if (y%a1/=1)print *,202
if (z%a1/=1)print *,203
end subroutine
end
use mod
if (x%a1/=1)print *,101
if (y%a1/=1)print *,102
print *,'pass'
end
