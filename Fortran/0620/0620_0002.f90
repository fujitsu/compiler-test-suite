subroutine s1
character(:),allocatable::a(:)
allocate(character(1)::a(2))
a='12'
if (len(a)/=2)print *,101
if (any(shape(a)/=2))print *,101
if (any(lbound(a)/=1))print *,102
if (any(a/='12'))print *,103
end
call s1
print *,'pass'
end
