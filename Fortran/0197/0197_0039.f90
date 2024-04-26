module mod1
implicit none
type base
integer :: ii
contains
   FINAL :: test_final_base
end type

type xxx
   integer :: kk
   type(base) :: base_cmp
contains
   FINAL :: test_final_xxx
end type
type :: yyy
   type(xxx) :: cmp_1_xxx(2,2)
   integer :: mm
   type(xxx) :: cmp_xxx(3,1)
   integer,allocatable :: alc
contains
   FINAL :: test_final_yyy
end type

type tt
class(yyy),allocatable :: cmp_yyy
end type

contains
subroutine test_final_base(yy)
   type(base) :: yy
   write(1,*)"base des:",yy%ii
end subroutine

subroutine test_final_xxx(yy)
   type(xxx) :: yy(:,:)
   write(1,*)"xxx des:",yy%kk
end subroutine

subroutine test_final_yyy(yy)
   type(yyy),intent(in) :: yy
   write(1,*)"test_final_yyy",yy%mm
end subroutine

end module
 
function fun_1()
use mod1
type(tt) :: obj(3)
fun_1=0
allocate(obj(1)%cmp_yyy)
obj(1)%cmp_yyy%mm = 1
obj(1)%cmp_yyy%cmp_xxx%kk = 10
obj(1)%cmp_yyy%cmp_xxx%base_cmp%ii = 11
obj(1)%cmp_yyy%cmp_1_xxx%kk = 12
obj(1)%cmp_yyy%cmp_1_xxx%base_cmp%ii = 13

deallocate(obj(1)%cmp_yyy)
end function
integer :: xx
xx = fun_1()
print *,'pass'
end
