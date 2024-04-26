module m1
contains
subroutine s1(c1,c2)
character(*),allocatable             ::c1
character(*),allocatable,dimension(:)::c2

allocate(c2(2),c1)
c1='1'
c2='1'
end subroutine
subroutine s2(i)
character(i),allocatable             ::c1
character(i),allocatable,dimension(:)::c2

allocate(c2(2),c1)
c1='1'
c2='1'
if (c1   /='1')print *,200,c1
if (c2(1)/='1')print *,201,c2(1)
if (c2(2)/='1')print *,202,c2(2)
end subroutine
end
subroutine x1
use m1
character(1),allocatable             ::c1
character(1),allocatable,dimension(:)::c2
call       s1(c1,c2)
if (c1   /='1')print *,100,c1
if (c2(1)/='1')print *,101,c2(1)
if (c2(2)/='1')print *,102,c2(2)
call       s2(1    )
end
call x1
print *,'pass'
end
