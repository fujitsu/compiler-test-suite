module mod
  type str
    integer,allocatable :: iii(:)
    integer,allocatable :: jjj(:)
  end type
  contains
  subroutine sub(from,to)
    type(str),allocatable,intent(inout) :: from(:)
    type(str),allocatable,intent(out) :: to(:)
    call move_alloc(from,to)
  end subroutine
end module

use mod
type(str),allocatable :: str1(:)
type(str),allocatable :: str2(:)
allocate(str1(10))
do i = 1,10
  allocate(str1(i)%iii(10))
  allocate(str1(i)%jjj(10))
  str1(i)%iii = i
  str1(i)%jjj = i*10
end do
call sub(str1,str2)
if (any(str2(1)%iii/=1))write(6,*) "NG"
if (any(str2(1)%jjj/=10))write(6,*) "NG"
print *,'pass'
end
