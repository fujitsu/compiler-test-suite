module mod
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
  interface
 module subroutine sub1()
 end subroutine 
 module subroutine sub2a(val)
  real(8), intent(inout) :: val
 end subroutine 
 module subroutine sub2(val)
  real(8), intent(inout) :: val
 end subroutine 
 module subroutine sub3()
 end subroutine 
  end interface
end
submodule (mod) smod
contains
 module procedure  sub1
print *,'ng1'
 end 
 module procedure  sub2a
val=2
!print *,'call sub2a'
 end
 module procedure  sub2
val=1
!print *,'call sub2'
 end 
 module procedure  sub3
print *,'ng3'
 end 
end
use mod
  type(t_e_1a) :: bbb
  real(8) :: val
  call aaa%set(val)
if (int(val).ne.2) print *,'err'
  call bbb%set(val)
if (int(val).ne.1) print *,'err'
print *,'sngg344o : pass'
end

