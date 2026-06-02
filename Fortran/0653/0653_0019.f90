call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
type ty1
 integer(kind=1) :: i1
 integer,allocatable::ia(:)
end type
type(ty1) :: str
allocate(str%ia(10))
do i=1,10
str%ia(i)=i
end do
call sub(str%ia)
contains
subroutine sub(aa)
integer,allocatable::aa(:)
if (.not.allocated(aa)) print *,'fail'
do i=1,10
if (aa(i).ne.i) print *,'fail'
end do
end subroutine
end subroutine

subroutine test02()
type ty1
 integer(kind=1) :: i1
 integer,allocatable::ia(:)
end type
type(ty1) :: str
 integer,allocatable::ib(:)
allocate(ib(10))
str=ty1(1,ib)
do i=1,10
str%ia(i)=i
end do
call sub(str%ia)
contains
subroutine sub(aa)
integer,allocatable::aa(:)
if (.not.allocated(aa)) print *,'fail'
do i=1,10
if (aa(i).ne.i) print *,'fail'
end do
end subroutine
end subroutine

subroutine test03()
type ty1
 integer(kind=1) :: i1
 integer,allocatable::ia(:)
end type
type(ty1) :: str
call sss(str%ia)
do i=1,10
str%ia(i)=i
end do
call sub(str%ia)
contains
subroutine sub(aa)
integer,allocatable::aa(:)
if (.not.allocated(aa)) print *,'fail'
do i=1,10
if (aa(i).ne.i) print *,'fail'
end do
end subroutine
subroutine sss(aa)
integer,allocatable::aa(:)
allocate(aa(10))
end subroutine
end subroutine
