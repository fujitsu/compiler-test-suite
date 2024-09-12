subroutine s1
type ttt
integer:: z1
character(:),allocatable:: name
integer:: z2
end type
character(:),allocatable:: ne
type(ttt)::sss
allocate(sss%name,source='yy')
if (sss%name/='yy')print *,41
end
call s1
print *,'pass'
end
