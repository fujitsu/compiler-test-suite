module mod
type tt
integer :: ii=5
end type
  type  :: t_1
   contains
     procedure  :: yyy=>sub3
     generic                :: operator(.aaa.) => yyy        !  set/yyy
  end type 
  type,extends(t_1)  :: t_e_2
   contains
     procedure  :: xxx=>sub2
     generic                :: operator(.aaa.) => xxx        !  set/yyy
  end type
  type,extends(t_e_2)  :: t_e_3
   class(t_1),pointer :: val
   contains
     procedure  :: yyy=>sub1
  end type
contains
 function   sub3(a,ii)
  class(t_1), intent(in) :: a,ii
  sub3=3
 end 
 function   sub2(a,ii)
  class(t_e_2), intent(in) :: a
  integer ,intent(in) :: ii
  if (ii/=11) print *,901
  sub2=2
 end 
 function   sub1(a,ii)
  class(t_e_3), intent(in) :: a
  class(t_1), intent(in) :: ii
  sub1=1
 end
end
use mod
  class(t_e_3),pointer :: b
  class(t_1),pointer :: val
allocate(b,val)
  call sss(b  .aaa.11)
  call ttt(b  .aaa.val)
print *,'sngg526n : pass'
end
subroutine sss(x)
real::x
if (x/=2)print *,1010,x
end
subroutine ttt(x)
real::x
if (x/=1)print *,1011,x
end
