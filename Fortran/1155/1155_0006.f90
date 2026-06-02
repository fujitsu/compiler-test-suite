module mod
  type  :: t_1
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
     procedure, nopass :: yyy => sub3       !  yyy
  end type 
  type(t_e_3) :: aaa
  real(8) :: val
contains
 subroutine sub1()
write(9,*)1
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
write(9,*)2
 end subroutine 
 subroutine sub3()
write(9,*)3
 end subroutine 
 subroutine foo
  !call aaa%set(val)
  call aaa%set()
 end subroutine 
end
use mod
call foo
rewind 9
read(9,*)n;if(n/=3)print *,101
read(9,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg508n : pass'
end

