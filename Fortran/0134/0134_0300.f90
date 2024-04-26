module mod
 type,private:: a
    integer,public::a1
    integer,private::a2
 end type
 type(a),public::x=a(1,2)
 type(a)::y=a(1,2)
 type(a),private::z=a(1,2)
contains
subroutine s
if (x%a1/=1)print *,201
if (y%a1/=1)print *,202
if (z%a1/=1)print *,203
if (x%a2/=2)print *,204
if (y%a2/=2)print *,205
if (z%a2/=2)print *,206
end subroutine
end
use mod
if (x%a1/=1)print *,101
if (y%a1/=1)print *,102
print *,'pass'
end
