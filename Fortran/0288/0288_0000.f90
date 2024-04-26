call testaa()
print *,'pass'
end
module example
 implicit none
 integer,dimension(2,2) :: bar1=1, bar2=2
 type phone_number
 integer :: area_code, number
 end type phone_number
 interface
  function test(sample,result)
  implicit none
  real :: test
  integer , intent(in) :: sample,result
  end function test
  function count(total)
  implicit none
  integer :: count
  real , intent(in) :: total
  end function count
 end interface
 interface swap
   module procedure swap_reals, swap_integers
 end interface swap
 contains
 subroutine swap_reals(r1,r2)
   real , intent(inout) :: r1,r2
   real :: t
   t = r1 ; r1 = r2 ; r2 = t
  end subroutine swap_reals
 subroutine swap_integers(i1,i2)
  integer ,intent(inout) :: i1,i2
  integer :: t
  t = i1 ; i1 = i2 ; i2 = t
  end subroutine swap_integers
 end module example
subroutine testaa()
use example
end
