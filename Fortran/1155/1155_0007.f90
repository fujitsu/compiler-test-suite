module n  
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
  real(8) :: val
contains
 subroutine sub1()
write(10,*)1
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
write(10,*)2
 end subroutine 
 subroutine sub3()
write(10,*)3
 end subroutine 
end
module mod
  use n
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: yyy => sub3       !  yyy
  end type 
  type(t_e_3) :: aaa
end
use mod
  call aaa%set(val)
  call aaa%set(   )
rewind 10
read(10,*)n;if(n/=2)print *,101
read(10,*)n;if(n/=3)print *,101
read(10,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg509n : pass'
end

