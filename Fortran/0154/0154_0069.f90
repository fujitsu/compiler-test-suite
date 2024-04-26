subroutine s1
type x1(k1,k2)
integer,kind:: k1
integer,kind:: k2=8
integer(k1):: x1=1
integer(k2):: x2=2
end type
type (x1(8)):: v1
type (x1(2,2)):: v2
type (x1(8,k2=2)):: v3
if (v1%x1/=1) print *,101
if (v1%x2/=2) print *,102
if (kind(v1%x1)/=8) print *,103
if (kind(v1%x2)/=8) print *,104
if (v2%x1/=1) print *,111
if (v2%x2/=2) print *,112
if (kind(v2%x1)/=2) print *,113
if (kind(v2%x2)/=2) print *,114
if (v3%x1/=1) print *,121
if (v3%x2/=2) print *,122
if (kind(v3%x1)/=8) print *,123
if (kind(v3%x2)/=2) print *,124
end
call s1
print *,'pass'
end
