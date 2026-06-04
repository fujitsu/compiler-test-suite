module mod
contains
 subroutine sub1()
print *,'ng1'
 end subroutine 
 subroutine sub2a(val)
  real(8), intent(inout) :: val
val=2
!print *,'call sub2a'
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
val=1
!print *,'call sub2'
 end subroutine 
 subroutine sub3()
print *,'ng3'
 end subroutine 
end
use mod
  type  :: t_1
   contains
     procedure, nopass :: yyy => sub1       !  yyy
     generic           :: set => yyy        !  set/yyy
  end type 
  type, extends(t_1)   :: t_e_1
  end type
  type, extends(t_e_1)   :: t_e_1a
   contains
     procedure, nopass :: xxx => sub2
     generic           :: set => xxx        !  set
  end type
  type, extends(t_e_1a)   :: t_e_2
   contains
     procedure, nopass :: xxx => sub2a
     generic           :: set => xxx        !  set
  end type 
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: yyy => sub3       !  yyy
  end type 
  type(t_e_3) :: aaa
  type(t_e_1a) :: bbb
  real(8) :: val
  call aaa%set(val)
if (int(val).ne.2) print *,'err'
  call bbb%set(val)
if (int(val).ne.1) print *,'err'
print *,'pass'
end

