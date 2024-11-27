module m01
type a1
 integer,allocatable::x(:)
end type
contains
subroutine s01(t)
type(a1),target::t
type(a1),pointer::p
p=>t
t%x(1)=1
t%x(2)=2
p%x(1)=3
p%x(2)=4
if (t%x(1)/=3)write(6,*) "NG"
if (t%x(2)/=4)write(6,*) "NG"
end subroutine
subroutine s02(t)
type(a1),target::t
type(a1),pointer::p
p=>t
p%x(1)=3
p%x(2)=4
t%x(1)=1
t%x(2)=2
if (t%x(1)/=1)write(6,*) "NG"
if (t%x(2)/=2)write(6,*) "NG"
end subroutine
subroutine s03(t)
type(a1),target::t
type(a1),pointer::p
p=>t
t%x(1)=1
t%x(2)=2
p%x(1)=3
p%x(2)=4
if (p%x(1)/=3)write(6,*) "NG"
if (p%x(2)/=4)write(6,*) "NG"
end subroutine
subroutine s04(t)
type(a1),target::t
type(a1),pointer::p
p=>t
p%x(1)=3
p%x(2)=4
t%x(1)=1
t%x(2)=2
if (p%x(1)/=1)write(6,*) "NG"
if (p%x(2)/=2)write(6,*) "NG"
end subroutine
end
use m01
type(a1),target::t
allocate(t%x(2))
t%x=(/11,12/)
call s01(t)
t%x=(/11,12/)
call s02(t)
t%x=(/11,12/)
call s03(t)
t%x=(/11,12/)
call s04(t)
print *,'pass'
end
