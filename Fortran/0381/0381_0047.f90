subroutine s1
type ttt
character(:),allocatable:: name
end type
type(ttt)::sss
sss=ttt(name="aa")
if (sss%name/='aa')print *,11
end
call s1
print *,'pass'
end
