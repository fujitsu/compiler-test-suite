subroutine s1
type ttt
integer:: z1
character(:),allocatable:: name
integer:: z2
end type
type(ttt)::sss
sss=ttt(2,name="aa",z2=3)
if (sss%z1/=2)print *,21
if (sss%name/='aa')print *,11
if (sss%z2/=3)print *,31
end
call s1
print *,'pass'
end
