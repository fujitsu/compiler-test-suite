module mod
contains
 subroutine sub1()
!print *,'sub1'
 end subroutine
 subroutine sub2(val)
  real(8), intent(inout) :: val
!print *,'sub2'
 end subroutine
 subroutine sub3()
!print *,'sub3'
 end subroutine
end
use mod
  type  :: t_1
   contains
    procedure, nopass ::  sub1      
     generic           :: set => sub1 
  end type
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: sub1
     generic           :: set => sub1 
  end type
  type, extends(t_e_2) :: t_e_3
   contains
  end type
  type(t_e_3) :: aaa
  real(8) :: val
!  call aaa%set(val)
  call aaa%set()
print *,'pass'
end

