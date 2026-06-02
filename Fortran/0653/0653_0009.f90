type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer,allocatable::yy1(:)
y=x(yy1)
if (allocated(y%xx1))print *,'fail'
call sub12()
print *,'pass'
end

subroutine sub12()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer,parameter::yy1(10)=1
y=x(yy1(yy1))
if (.not.allocated(y%xx1))print *,'fail'
end
