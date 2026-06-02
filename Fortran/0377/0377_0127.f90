character(:),allocatable :: arr(:)
i10=10
call test01()
call test02()
print *,"pass"
end

subroutine test01()
call sub1((/integer :: 1_1,1_2/))
i10=10
call sub((/character(i10) :: "a"/))
contains
subroutine sub1(ii)
integer :: ii(2)
end subroutine
subroutine sub(ccc)
character(*) :: ccc(1)
if (len(ccc).ne.10) print *,'fail'
end subroutine
end subroutine
subroutine test02()
type ty1
 integer :: i
end type
type(ty1) :: str,sss(1)
str%i=1
sss=(/ty1 :: str/)
if (sss(1)%i.ne.1) print *,'fail'
end
