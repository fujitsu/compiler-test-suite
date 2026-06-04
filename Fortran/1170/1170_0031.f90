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
  type, extends(t_1)   :: t_e_1
  end type
integer::nn
contains
 subroutine sub1()
  nn=1
 end subroutine 
end
submodule (mod: smod1) wmod2
  type, extends(t_e_1)   :: w_2
   contains
     procedure, nopass :: xxx => sub2_d
     generic           :: set => xxx        !  set
  end type
  type, extends(w_2)   :: w_e_2
  end type
contains
 subroutine sub2_d(val)
  real(8), intent(inout) :: val
   val=2
 end subroutine 
end
submodule (mod: wmod2) umod3
  type, extends(w_e_2)   :: u_3
   contains
     procedure, nopass :: xxx => sub3_d
  end type 
  type, extends(u_3)   :: u_e_3
  end type
contains
 subroutine sub3_d(val)
  real(8), intent(inout) :: val
    val=1
 end subroutine 
end
submodule (mod: umod3) rmod4
  type, extends(u_e_3) :: r_4
   contains
     procedure, nopass :: yyy => sub3       !  yyy
  end type 
  type, extends(r_4)   :: r_e_4
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
  type(w_e_2) :: bbb
  call aaa%set(val)
if (int(val).ne.1) print *,'err01',val
  call bbb%set(val)
if (int(val).ne.2) print *,'err02',val
call aaa%set()
if (nn/=4) print *,'err03',nn
call bbb%set()
if (nn/=1) print *,'err04',nn
k=1
end
end

use mod
call qmod5_sub(k)
print *,'sngg370o : pass'
end

