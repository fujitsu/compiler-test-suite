module mod
contains
 subroutine sub1()
! print *,'erraaaa'
 end subroutine
 subroutine sub2(val)
  real(8), intent(inout) :: val
if (int(val).ne.1) print *,'err'
 end subroutine
 subroutine sub3()
print *,'err'
 end subroutine
end
use mod
  type  :: t_1
   contains
    procedure, nopass ::  sub1       !  yyy
     generic           :: set => sub1       !  set/yyy
  end type
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: sub2
     generic           :: set => sub2       !  set
  end type
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: sub3  !!!!=> sub3       !  yyy
  end type
  type(t_e_3) :: aaa
  real(8) :: val
val=1.0
  call aaa%set(val)
  call aaa%set()
print *,'pass'
call test
end

module mod2
contains
 subroutine sub1(iii)
! print *,'erraaaa'
integer ,intent(inout) :: iii
if (iii.ne.2) print *,'err'
 end subroutine
 subroutine sub2(val)
  real(8), intent(inout) :: val
if (int(val).ne.1) print *,'err'
 end subroutine
 subroutine sub3()
print *,'err'
 end subroutine
end
subroutine test()
use mod2
  type  :: t_1
   contains
    procedure, nopass ::  sub1       !  yyy
     generic           :: set => sub1       !  set/yyy
  end type
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: sub2
     generic           :: set => sub2       !  set
  end type
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: sub3  !!!!=> sub3       !  yyy
  end type
  type(t_e_3) :: aaa
  real(8) :: val
integer :: iii=2
val=1.0
  call aaa%set(val)
  call aaa%set(iii)
end

