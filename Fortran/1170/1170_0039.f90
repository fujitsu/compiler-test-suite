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
  type, extends(t_1)   :: t_e_2
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
  type, extends(t_e_2)   :: w_22
   contains
     procedure, nopass :: xxx => sub22_d
     generic           :: set => xxx        !  set
  end type
  type, extends(w_22)   :: w_e_22
  end type
contains
 subroutine sub22_d(val)
  real(8), intent(inout) :: val
   val=22
 end subroutine 
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
  type, extends(w_e_22)   :: u_33
   contains
     procedure, nopass :: xxx => sub33_d
  end type 
  type, extends(u_33)   :: u_e_33
  end type
contains
 subroutine sub3_d(val)
  real(8), intent(inout) :: val
    val=1
 end subroutine 
 subroutine sub33_d(val)
  real(8), intent(inout) :: val
    val=11
 end subroutine 
end
submodule (mod: umod3) rmod4
  type, extends(u_e_3) :: r_4
   contains
     procedure, nopass :: yyy => sub3       !  yyy
  end type 
  type, extends(r_4)   :: r_e_4
  end type
  type, extends(u_e_33) :: r_44
   contains
     procedure, nopass :: yyy => sub33       !  yyy
  end type 
  type, extends(r_44)   :: r_e_44
  end type
contains
 subroutine sub3()
  nn=4
 end subroutine 
 subroutine sub33()
  nn=44
 end subroutine 
end
submodule (mod: rmod4) qmod5
  class(r_e_4),pointer :: aaa
  class(w_e_2),pointer :: bbb
  class(r_e_44),pointer :: a
  class(w_e_22),pointer :: b
interface
 module subroutine zmod6_sub(aaa,bbb,a,b,val)
  class(r_e_4),pointer :: aaa
  class(w_e_2),pointer :: bbb
  class(r_e_44),pointer :: a
  class(w_e_22),pointer :: b
  real(8) :: val
 end
end interface
contains
 module procedure  qmod5_sub
  real(8),pointer :: val
allocate(aaa,bbb,a,b,val)
 call              zmod6_sub(aaa,bbb,a,b,val)
k=1
end
end
submodule (mod: qmod5) zmod6
contains
 module procedure  zmod6_sub

  call aaa%set(val)
if (int(val).ne.1) print *,'err01',val
  call bbb%set(val)
if (int(val).ne.2) print *,'err02',val
call aaa%set()
if (nn/=4) print *,'err03',nn
call bbb%set()
if (nn/=1) print *,'err04',nn

  call a%set(val)
if (int(val).ne.11) print *,'err011',val
  call b%set(val)
if (int(val).ne.22) print *,'err022',val
call a%set()
if (nn/=44) print *,'err033',nn
call b%set()
if (nn/=1) print *,'err044',nn

  call aaa%xxx(val)
if (int(val).ne.1) print *,'err01',val
  call bbb%xxx(val)
if (int(val).ne.2) print *,'err02',val
call aaa%yyy()
if (nn/=4) print *,'err03',nn
call bbb%yyy()
if (nn/=1) print *,'err04',nn

  call a%xxx(val)
if (int(val).ne.11) print *,'err011',val
  call b%xxx(val)
if (int(val).ne.22) print *,'err022',val
call a%yyy()
if (nn/=44) print *,'err033',nn
call b%yyy()
if (nn/=1) print *,'err044',nn
end
end

use mod
call qmod5_sub(k)
if (k/=1) print *,900
print *,'sngg378o : pass'
end

