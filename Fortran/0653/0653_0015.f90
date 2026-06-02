interface
 subroutine test01(a)
 optional :: a
 integer,allocatable:: a(:)
 end subroutine
 subroutine test02(a)
 optional :: a
 integer,allocatable:: a(:)
 end subroutine
end interface
integer,allocatable:: a(:)
allocate(a(10))
call test01(a)
call test02()
call test03(1)
call test04(1)
call test05(1)
call test06(1)
print *,'pass'
contains
subroutine test03(a)
optional :: a
integer,volatile:: a
if (a.ne.1) print *,'fail'
end subroutine
subroutine test04(a)
integer,volatile:: a
optional :: a
if (a.ne.1) print *,'fail'
end subroutine
subroutine test05(a)
integer,value   :: a
if (a.ne.1) print *,'fail'
end subroutine
subroutine test06(a)
integer,value   :: a
if (a.ne.1) print *,'fail'
end subroutine
end

subroutine test01(a)
optional :: a
integer,allocatable:: a(:)
if (.not.present(a)) print *,'fail'
end subroutine

subroutine test02(a)
allocatable:: a(:)
optional :: a
integer :: a
if (present(a)) print *,'fail'
end subroutine
