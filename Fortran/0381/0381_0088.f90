subroutine test01()
integer :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
str=12
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,11
if (sss%str/=12)print *,12
deallocate(sss%str)
end

subroutine test02()
integer :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,21
end
subroutine test03()
 integer,allocatable :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
allocate(str)
str=1
if (str/=1)print *,31
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,32
end
subroutine test04()
 integer,allocatable :: str(:)
type ty2
 integer :: x
 integer,allocatable :: str(:)
end type
type (ty2) ::sss
allocate(str(2))
str=1
if (any(str/=1))print *,41
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,42
end

do i=1,2
call test01()
call test02()
call test03()
call test04()
end do
print *,"pass"
end
