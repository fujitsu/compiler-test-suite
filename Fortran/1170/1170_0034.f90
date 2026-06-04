module mod
 interface
   module subroutine qmod5_sub(k)
   end
 end interface

end
submodule (mod) smod1
  type  :: t_1
   contains
     procedure, nopass :: yyy => sub1       !  yyy
     generic           :: set => yyy        !  set/yyy
  end type 
integer::nn
contains
 subroutine sub1()
  nn=1
 end subroutine 
end
submodule (mod: smod1) umod3
  type, extends(t_1)   :: u_3
   contains
     procedure, nopass :: xxx => sub3_d
     generic           :: set => xxx
  end type 
contains
 subroutine sub3_d(val)
  real(8), intent(inout) :: val
    val=1
 end subroutine 
end
submodule (mod: umod3) rmod4
  type, extends(u_3) :: r_4
   contains
     procedure, nopass :: yyy => sub3  
  end type 
contains
 subroutine sub3()
  !!print *,'ng3'
  nn=4
 end subroutine 
end
submodule (mod: rmod4) qmod5
contains
 module subroutine qmod5_sub(k)
  real(8) :: val
  type(r_4) :: aaa
  call aaa%set(val)
end
end

use mod
call qmod5_sub(k)
print *,'sngg373o : pass'
end

