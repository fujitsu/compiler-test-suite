subroutine s1
type ttt
character(2),allocatable:: name
end type
type(ttt)::sss,x
allocate(character(2)::x%name)
x%name='aa'
sss=x
if (sss%name/='aa')print *,11
if (x%name  /='aa')print *,12
if (loc(sss%name)==loc(x%name))print *,13
end
call s1
print *,'pass'
end
