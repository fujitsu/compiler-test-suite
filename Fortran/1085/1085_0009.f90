module mod
contains
 subroutine sub2()
print *,'ng1'
 end subroutine 
 subroutine sub1(val,ii)
  real(8), intent(inout) :: val
 end subroutine 
 subroutine sub3(val,ii)
  real(8), intent(inout) :: val
print *,'ng3'
 end subroutine 
end
use mod
  type  :: t_1
   contains
     procedure, nopass :: yyy => sub3       !  yyy
     generic           :: set => yyy        !  set/yyy
  end type 
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: xxx => sub2
     generic           :: set => xxx        !  set
  end type 
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: yyy => sub1       !  yyy
  end type 
  type(t_e_3) :: aaa
  real(8) :: val
  call aaa%set(val,11)
print *,'pass'
end

