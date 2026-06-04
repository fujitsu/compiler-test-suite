module mod
contains
 subroutine sub1()
write(4,*)1
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
write(4,*)2
 end subroutine 
 subroutine sub3()
write(4,*)3
 end subroutine 
end
use mod
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
  call aaa%set(val)   ! sub2
  call aaa%set()      ! sub3
rewind 4
read(4,*)n;if(n/=2)print *,101
read(4,*)n;if(n/=3)print *,101
read(4,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg505n : pass'
end

