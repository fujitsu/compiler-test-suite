subroutine s1
integer,allocatable::g,t
allocate(g,t)
g=1
t=2
call move_alloc(g,t)
if (t/=1)print *,101,t
end
call s1
print *,'pass'
end

