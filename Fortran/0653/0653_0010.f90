call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

subroutine test01()
type x
 integer,allocatable::p1(:)
end type
type(x)::p,aa
allocatable :: aa(:)
if (allocated(p%p1))print *,'fail'
i=10
allocate(aa(i))
do i=1,10
 allocate(aa(i)%p1(1:10))
end do
end

subroutine test02()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
p=x(pp)
end

subroutine test03()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
do i=1,1
p=x(pp)
end do 
end


subroutine test04()
type x
 integer,allocatable::p1(:)
end type
type(x)::p
integer,allocatable::pp(:)
allocate(pp(10))
p=x(pp)
end
