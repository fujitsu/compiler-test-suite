subroutine s1
type x
integer,pointer::x1
integer,allocatable::y1
character,pointer::t1
character,allocatable::w1
end type
type (x)::v
allocate(v%x1)
v%x1=1
if (v%x1/=1)print *,101
allocate(v%y1)
v%y1=1
if (v%y1/=1)print *,102
allocate(v%t1)
v%t1='1'
if (v%t1/='1')print *,201
allocate(v%w1)
v%w1='1'
if (v%w1/='1')print *,202
end
call s1
print *,'pass'
end
