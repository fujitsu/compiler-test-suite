module m1
      type e1
         integer, pointer :: p
      end type
contains
  subroutine s(p1,p2)
      type (e1),target::  p1(:),p2(:)

      forall (i = 2:5)
         p1(i)%p => p2(i-1)%p
      end forall

      if (p1(1)%p /=1)print *,"fail"
      if (p1(2)%p /=1)print *,"fail"
      if (p1(3)%p /=2)print *,"fail"
      if (p1(4)%p /=3)print *,"fail"
      if (p1(5)%p /=4)print *,"fail"
 end subroutine
end
use m1
      type (e1),target::  p(5)
      integer,target:: x(5)=(/1,2,3,4,5/)
do i=1,5
 p(i)%p=>x(i)
end do
call s(p,p)
      print *,'pass'
      end
