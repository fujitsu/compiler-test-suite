module mod
contains
 subroutine sub1()
!print *,'sub1'
 end subroutine
 subroutine sub2(val)
  real(8), intent(inout) :: val
!print *,'sub2'
 end subroutine
 subroutine sub2a(val)
  integer, intent(inout) :: val
!print *,'sub2a'
 end subroutine
 subroutine sub3()
!print *,'sub3'
 end subroutine
end
use mod
  type  :: t_1
   contains
    procedure, nopass ::  sub2      
     generic           :: set => sub2 
  end type
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: sub1
     generic           :: set => sub1 
  end type
  type, extends(t_e_2)   :: t_e_3
   contains
     procedure, nopass :: sub2a
     generic           :: set => sub2a 
  end type
  type, extends(t_e_3) :: t_e_4
   contains
     procedure, nopass :: sub3 
  end type
  type(t_e_3) :: aaa
  real(8) :: val
  integer :: iii=1
  call aaa%set(val)
  call aaa%set(iii)
  call aaa%set()
print *,'pass'
end

