subroutine test02()
integer :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
str=2
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,21
if (str/=2)print *,22
end
subroutine test03()
integer,pointer :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
allocate(str)
str=2
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,121
if (str/=2)print *,122
end
subroutine test04()
integer,allocatable :: str
type ty2
 integer :: x
 integer,allocatable :: str
end type
type (ty2) ::sss
allocate(str)
str=2
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,121
if (str/=2)print *,122
end

do i=1,2
call test02()
call test03()
call test04()
end do
print *,"pass"
end
