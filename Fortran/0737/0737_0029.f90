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
call s11
   print *,'pass'
   end
