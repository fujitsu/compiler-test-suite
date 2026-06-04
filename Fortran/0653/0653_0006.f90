call test01()
print *,'pass'
end

subroutine test01()
type ty1
integer,allocatable :: arr(:)
end type
type(ty1) :: str
str=ty1(afun())
if (.not.allocated(str%arr)) print *,'fail'
do i=1,10
if (str%arr(i).ne.i) print *,'fail'
end do
str=ty1(null())
if (allocated(str%arr)) print *,'fail'
contains
function afun() result(all)
integer,allocatable::all(:)
allocate(all(10))
all=(/1,2,3,4,5,6,7,8,9,10/)
end function
end subroutine
