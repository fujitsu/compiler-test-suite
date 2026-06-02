module mod
contains
 subroutine sub1()
write(8,*)1
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
write(8,*)2
 end subroutine 
 subroutine sub3()
write(8,*)3
 end subroutine 
end
use mod
  type  :: t_1
   contains
     procedure, nopass ::  sub1       
     generic           :: sss => sub1     
  end type 
  type, extends(t_1)   :: t_e_2
   contains
     procedure, nopass :: sub2
     generic           :: set => sub2    
  end type 
  type, extends(t_e_2) :: t_e_3
   contains
     procedure, nopass :: sub3
     generic           :: set => sub3      
  end type 
  type(t_e_3) :: aaa
  real(8) :: val
  call aaa%set(val)
  call aaa%set()
rewind 8
read(8,*)n;if(n/=2)print *,101
read(8,*)n;if(n/=3)print *,101
read(8,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg507n : pass'
end

