subroutine s1
integer,pointer::x1
integer,allocatable::y1
character,pointer::t1
character,allocatable::w1
allocate(x1)
x1=1
if (x1/=1)print *,101
allocate(y1)
y1=1
if (y1/=1)print *,102
allocate(t1)
t1='1'
if (t1/='1')print *,201
allocate(w1)
w1='1'
if (w1/='1')print *,202
end
call s1
print *,'pass'
end
