module m1
  type x
    integer::x1
    integer,allocatable::x2(:)
  end type
  type(x):: v1a(2),v2a(2),v2s
end
subroutine s1
use m1
allocate(v2s%x2(2))
v2s%x2(1)=1
v2s%x2(2)=2
v2a=v2s
v1a=v2a
v2a(1)%x2(1)=11
v2a(1)%x2(2)=12
v2a(2)%x2(1)=13
v2a(2)%x2(2)=14
v1a(1)%x2(1)=21
v1a(1)%x2(2)=22
v1a(2)%x2(1)=23
v1a(2)%x2(2)=24

if (any(v2s%x2/=[1,2])) print *,101
if (any(v2a(1)%x2/=[11,12])) print *,102
if (any(v2a(2)%x2/=[13,14])) print *,103
if (any(v1a(1)%x2/=[21,22])) print *,112
if (any(v1a(2)%x2/=[23,24])) print *,113
end
call s1
print *,'pass'
end
