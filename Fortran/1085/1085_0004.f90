module mod
contains
 subroutine sub1()
print *,'NG'
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
 end subroutine 
 subroutine sub3()
print *,'NG'
 end subroutine 
end
use mod
  type  :: t_1
   integer :: iii
   contains
     procedure, nopass :: yyy => sub1       !  yyy
     generic           :: set => yyy        !  set/yyy
  end type 
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: xxx => sub2
     generic           :: set => xxx        !  set
  end type 
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: zzz => sub3       !  yyy
  end type 
  type(t_e_3) :: aaa
  real(8) :: val
  call aaa%set(val)
print *,'pass'
end

