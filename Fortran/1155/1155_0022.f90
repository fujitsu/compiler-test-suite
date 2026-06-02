module mod
contains
 subroutine sub1()
write(23,*)3000
 end subroutine 
 subroutine sub2(val)
  real(8), intent(inout) :: val
write(23,*)1000
 end subroutine 
 subroutine sub3()
write(23,*)2000
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
     procedure, nopass :: sub1  !!!!=> sub3       !  yyy
  end type 
  type(t_e_3) :: aaa
  real(8) :: val
  call aaa%set(val)
  call aaa%set()
rewind 23
read(23,*)n;if(n/=1000)print *,101
read(23,*)n;if(n/=3000)print *,102
read(23,*,end=9)n;if(n/=3)print *,101
9 continue
print *,'sngg529n : pass'
end

