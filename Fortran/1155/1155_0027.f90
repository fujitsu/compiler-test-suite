module mod
contains
 subroutine sub1(k)
write(27,*)1   
 end subroutine
 subroutine sub2(val)
  real(8), intent(inout) :: val
write(27,*)2   
 end subroutine
 subroutine sub3()
write(27,*)3   
 end subroutine
end
use mod
  type  :: t_1
   contains
    procedure, nopass ::  sub3      
     generic           :: set => sub3 
  end type
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: sub1,sub2
     generic           :: set => sub1,sub2 
  end type
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: sub3 
  end type
  type(t_1) :: a
  type(t_e_3) :: aaa
  real(8) :: val
  call aaa%set(val)
  call aaa%set()
  call a%set()
rewind 27
read(27,*)n;if(n/=2)print *,101
read(27,*)n;if(n/=3)print *,101
read(27,*)n;if(n/=3)print *,101
read(27,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg534n : pass'
end

