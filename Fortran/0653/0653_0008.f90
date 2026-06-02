type x
integer,allocatable::xx1(:)
end type
type(x)::y
integer,allocatable::yy1(:)
y=x(yy1)
if (allocated(y%xx1))print *,'fail'
call sub1()
call sub11()
call sub12()
call sub13()
call sub14()
call sub15()
print *,'pass'
end

subroutine sub1()
type x
integer,allocatable::xx1(:)
end type
type(x)::y,z
y=x(z%xx1)
if (allocated(y%xx1))print *,'fail'
end

subroutine sub11()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
type t1
integer::yy1(10)
end type
type (t1) :: str
y=x(str%yy1)
if (.not.allocated(y%xx1))print *,'fail'
end

subroutine sub12()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
type t1
integer::yy1(10)
end type
type (t1) :: str
y=x(str%yy1(1:10))
if (.not.allocated(y%xx1))print *,'fail'
end

subroutine sub13()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
type t1
integer::yy1
end type
type (t1) :: str(10)
y=x(str%yy1)
if (.not.allocated(y%xx1))print *,'fail'
end

subroutine sub14()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
type t1
integer::yy1
end type
type (t1) :: str(10)
y=x(str(1:10)%yy1)
if (.not.allocated(y%xx1))print *,'fail'
end

subroutine sub15()
type x
integer,allocatable::xx1(:)
end type
type(x)::y
type t1
integer::yy1(10)
end type
type (t1):: str
parameter (str=t1(1))
y=x(str%yy1)
if (.not.allocated(y%xx1))print *,'fail'
end
