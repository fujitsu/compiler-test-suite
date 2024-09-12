subroutine s1(n)
type ttt
integer:: z1
character(2),allocatable:: name
integer:: z2
end type
character(2),allocatable:: ne
character(2),allocatable:: xx
type(ttt)::sss
allocate(character(n)::sss%name,xx)
sss%name='yy'
xx='yy'
if (len(sss%name)/=2)print *,51
if (sss%name/='yy')print *,42
if (xx/='yy')print *,46
deallocate(xx)
allocate(character(n)::ne,xx)
ne='yy'
xx='yy'
if (len(ne)/=2)print *,52
if (ne/='yy')print *,43
if (xx/='yy')print *,47
end
n=2
call s1(n)
print *,'pass'
end
