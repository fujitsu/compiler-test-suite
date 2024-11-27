module m1
contains
subroutine s1
integer,pointer::p1(:)
integer,target::t1(3)
t1=(/1,2,3/)
p1=>t1
if (any(p1/=(/1,2,3/)))write(6,*) "NG"
end subroutine
subroutine s2
integer,pointer::p1(:)
call s21(p1)
end subroutine
subroutine s21(p1)
integer,pointer::p1(:)
integer,target::t1(3)
t1=(/1,2,3/)
p1=>t1
if (any(p1/=(/1,2,3/)))write(6,*) "NG"
end subroutine
subroutine s11
type x
integer,allocatable::p1(:)
end type
type(x)::p
integer,target::t1(3)
t1=(/1,2,3/)
p=x(t1)
if (any(p%p1/=(/1,2,3/)))write(6,*) "NG"
end subroutine
subroutine s12
integer,allocatable::p1(:)
call s22(p1)
end subroutine
subroutine s22(p1)
integer,allocatable::p1(:)
integer,target::t1(3)
t1=(/1,2,3/)
allocate(p1(3))
p1=t1
if (any(p1/=(/1,2,3/)))write(6,*) "NG"
end subroutine
end
use m1
   call s1
   call s2
   call s11
   call s12
   print *,'pass'
   end
