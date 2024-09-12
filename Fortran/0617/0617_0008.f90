subroutine s1(n)
integer n(2)
type ttt
integer:: z1
character(:),allocatable:: name
integer:: z2
end type
character(:),allocatable:: ne
character(2),allocatable:: xx
character(n(2)),allocatable:: yy
type(ttt)::sss
k=2
allocate(character(n(2))::sss%name,xx,yy)
sss%name(:)='yy'
xx='yy'
yy='zz'
if (len(sss%name)/=2)print *,51
if (sss%name/='yy')print *,42
if (xx/='yy')print *,46
if (yy/='zz')print *,49
deallocate(sss%name,xx,yy)
allocate(character(n(k))::ne,xx,yy)
ne(:)='yy'
xx='yy'
yy='zz'
if (len(ne)/=2)print *,52
if (ne/='yy')print *,43
if (xx/='yy')print *,47
if (yy/='zz')print *,61
end
integer n(2)
n(2)=2
call s1(n)
print *,'pass'
end

