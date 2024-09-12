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
allocate(ne,source='yy')
if (ne/='yy')print *,42
if (len(ne)/=2)print *,53
deallocate(sss%name)
allocate(character(2)::sss%name)
sss%name='yy'
if (len(sss%name)/=2)print *,51
if (sss%name/='yy')print *,42
deallocate(ne)
allocate(character(2)::ne)
ne='yy'
if (len(ne)/=2)print *,52
if (ne/='yy')print *,43
end
call s1
print *,'pass'
end
