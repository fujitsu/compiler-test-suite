module m01
type a1
 integer,allocatable::x(:)
end type
contains
subroutine s01(t1,t2)
type(a1),target::t1,t2
t1%x(1)=1
t1%x(2)=2
t2%x(1)=3
t2%x(2)=4
if (t1%x(1)/=3)write(6,*) "NG"
if (t1%x(2)/=4)write(6,*) "NG"
end subroutine
subroutine s02(t1,t2)
type(a1),target::t1,t2
t2%x(1)=3
t2%x(2)=4
t1%x(1)=1
t1%x(2)=2
if (t1%x(1)/=1)write(6,*) "NG"
if (t1%x(2)/=2)write(6,*) "NG"
end subroutine
subroutine s03(t1,t2)
type(a1),target::t1,t2
t1%x(1)=1
t1%x(2)=2
t2%x(1)=3
t2%x(2)=4
if (t2%x(1)/=3)write(6,*) "NG"
if (t2%x(2)/=4)write(6,*) "NG"
end subroutine
subroutine s04(t1,t2)
type(a1),target::t1,t2
t2%x(1)=3
t2%x(2)=4
t1%x(1)=1
t1%x(2)=2
if (t2%x(1)/=1)write(6,*) "NG"
if (t2%x(2)/=2)write(6,*) "NG"
end subroutine
end
use m01
type(a1),target::t
allocate(t%x(2))
t%x=(/11,12/)
call s01(t,t)
t%x=(/11,12/)
call s02(t,t)
t%x=(/11,12/)
call s03(t,t)
t%x=(/11,12/)
call s04(t,t)
print *,'pass'
end
