subroutine test01()
character(2),allocatable :: str
type ty2
 integer :: x
 character(2),allocatable :: str
end type
type (ty2) ::sss
allocate(str)
str='12'
sss=ty2(1,str)
if (.not.allocated(sss%str))print *,11
if (sss%str/='12')print *,12
deallocate(sss%str)
end

subroutine test02()
character(2),allocatable :: str
type ty2
 integer :: x
 character(2),allocatable :: str
end type
type (ty2) ::sss
sss=ty2(1,str)
if (allocated(sss%str))print *,21
end
do k=1,3
call test01()
call test02()
enddo
print *,"pass"
end
