type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer,allocatable::yy1(:)
y=x(yy1)
if (allocated(y%xx1))print *,'fail'
call sub1()
call sub11()
call sub2()
print *,'pass'
end

subroutine sub1()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer,parameter::yy1(10)=1
y=x(yy1)
if (.not.allocated(y%xx1))print *,'fail'
end

subroutine sub11()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer,parameter::yy1(10)=1
y=x(yy1(1:10))
if (.not.allocated(y%xx1))print *,'fail'
end

subroutine sub2()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer::yy1(10)
y=x(yy1(1:2))
if (.not.allocated(y%xx1))print *,'fail'
end

