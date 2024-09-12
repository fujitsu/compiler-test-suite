interface
subroutine test04(arr)
real,pointer :: arr(:)
end subroutine
end interface
real arr(10)
real,pointer :: ipa(:)
call test01(arr)
call test02(arr)
call test03(arr,10)
call test04(ipa)
print *,'pass'
end

subroutine test01(arr)
real arr(10)
call sub01()
contains
subroutine sub01()
do i=1,10
arr(i)=2.0
end do
end subroutine
end

subroutine test02(arr)
real arr(*)
call sub01()
contains
subroutine sub01()
do i=1,10
arr(i)=3.0
end do
end subroutine
end

subroutine test03(arr,iii)
real arr(iii)
call sub01()
contains
subroutine sub01()
do i=1,10
arr(i)=3.0
end do
end subroutine
end

subroutine test04(arr)
real,pointer :: arr(:)
real,target  :: trr(10)
arr=>trr
call sub01()
contains
subroutine sub01()
do i=1,10
arr(i)=3.0
end do
end subroutine
end
