module mod
type tt
integer :: ii
end type
end
use mod
  class(tt),pointer :: a
  type,ABSTRACT  :: t_1
   contains
     procedure(sub3),pass(a),DEFERRED  :: yyy
     generic                :: operator(.aaa.) => yyy
  end type 
interface
 function   sub3(a,ii)
import
  class(t_1), intent(in) :: a,ii
 end 
end interface
  type,extends(t_1),ABSTRACT  :: t_e_2
   contains
     procedure(sub2),pass(a),DEFERRED  :: xxx
     generic                :: operator(.aaa.) => xxx
  end type
interface
 function   sub2(a,ii)
import
  class(t_e_2), intent(in) :: a
  integer ,intent(in) :: ii
 end
end interface
  type,extends(t_e_2),ABSTRACT  :: t_e_3
   class(t_1),pointer :: val
   contains
     procedure(sub1),pass(a),DEFERRED  :: yyy
  end type
interface
 function   sub1(a,ii)
import
  class(t_e_3), intent(in) :: a
  class(t_1), intent(in) :: ii
 end
end interface
  class(t_e_3),pointer :: aaa
  class(t_1),pointer :: val
if (1.eq.2)    call sss(aaa.aaa.11)
print *,'pass'
end
subroutine sss(a)
end

