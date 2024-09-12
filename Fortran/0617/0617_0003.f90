subroutine s1
type ttt
integer:: z1
character(:),allocatable:: name
integer:: z2
end type
type(ttt)::sss
allocate(sss%name,source='yy')
if (sss%name/='yy')print *,41
sss%name(:)='xx'
if (sss%name/='xx')print *,31
deallocate(sss%name)
allocate(character(2)::sss%name)
sss%name(:)='zz'
if (sss%name/='zz')print *,51
sss=ttt(2,name="aa",z2=3)
if (sss%z1/=2)print *,21
if (sss%name/='aa')print *,11
if (sss%z2/=3)print *,31
end
call s1
print *,'pass'
end

