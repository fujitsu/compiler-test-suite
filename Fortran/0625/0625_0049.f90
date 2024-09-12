subroutine s1(n)
type ttt
integer:: z1
character(:),allocatable:: name
integer:: z2
end type
character(:),allocatable:: ne
type(ttt)::sss
allocate(character(n)::sss%name)
sss%name='yy'
if (len(sss%name)/=2)print *,51
if (sss%name/='yy')print *,42
allocate(character(n)::ne)
ne='yy'
if (len(ne)/=2)print *,52
if (ne/='yy')print *,43
end
n=2
call s1(n)
print *,'pass'
end
