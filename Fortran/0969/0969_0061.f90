module mod01  
 type ty01
  integer :: ii01
 end type
end module

module mod02  
 contains
  subroutine m02_sub01(m02_s01_arg01)  
   use mod01
   type (ty01) :: m02_s01_arg01
  end subroutine
end module

use mod02  
use mod01  

type (ty01) :: tt01_01  
call csub01(tt01_01)    
                        

contains
 subroutine csub01(cs01_arg01)  
  use mod01
  type (ty01) :: cs01_arg01
 end subroutine
end
