call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
print *,'pass'
end

subroutine test01()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
do i=1,1
 p=x(pp)
do j=1,1
 p=x(pp)
do k=1,1
 p=x(pp)
end do 
end do 
end do 
p=p
end

subroutine test02()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
20 do 10 i=1,1
10 p=x(pp)
p=p
end

subroutine test03()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
if (1.eq.1) p=x(pp)
p=p
end 

subroutine test04()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
if (1.eq.1) then
 p=x(pp)
end if
p=p
end

subroutine test05()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
if (1.eq.1) then
 p=x(pp)
else 
 p=x(pp)
end if
p=p
end

subroutine test06()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
pp=1
i=1
select case(i)
case(1)
 p=x(pp)
end select
p=p
end

subroutine test07()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
pp=1
i=1
select case(i)
case(1)
 p=x(pp)
case default
 p=x(pp)
end select
p=p
end

subroutine test08()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
 p=x(pp)
p=p
end

subroutine test09()
type x
 integer,allocatable::p1(:)
end type
type(x)::p(10)
integer,allocatable::pp(:)
allocate(pp(10))
pp=1
 p=x(pp)
p=p
end
