module m
contains
subroutine s2(yy,xx)
character(*),allocatable:: xx
character(*),allocatable:: yy
allocate(character(*)::xx,yy)
xx='yy'
yy='zz'
if (xx/='yy')print *,146
if (yy/='zz')print *,149
deallocate(xx,yy)
allocate(xx,yy)
xx='uy'
yy='uz'
if (xx/='uy')print *,146
if (yy/='uz')print *,149
end subroutine 
end
use m
character(2),allocatable:: xx
character(2),allocatable:: yy
call s2(xx,yy)
print *,'pass'
end
