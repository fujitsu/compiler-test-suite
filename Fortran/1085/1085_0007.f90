module mod
contains
 subroutine sub1()
print *,'ng  '
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
print *,'ng  '
 end subroutine 
 subroutine sub3()
 end subroutine 
end
use mod
  type  :: t_1
   contains
     procedure, nopass :: yyy => sub1       !  yyy
     generic           :: set1 => yyy        !  set/yyy
  end type 
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: xxx => sub2
     generic           :: set => xxx        !  set
  end type 
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: yyy => sub3       !  yyy
  end type 
  type(t_e_3) :: aaa
  real(8) :: val
  call aaa%set1()   ! sub3
print *,'pass'
end

