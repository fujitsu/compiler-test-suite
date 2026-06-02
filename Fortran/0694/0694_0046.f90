module m1
      type e1
         integer, pointer :: p
      end type
contains
  subroutine s(p1,p2,k)
      type (e1),pointer::  p1(:),p2(:)

      forall (i = 2:k)
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
      integer,target:: x(5)=(/1,2,3,4,5/)
      type (e1),pointer::  p1(:),p2(:)
allocate(p1(5),p2(5))
do i=1,5
 p1(i)%p=>x(i)
 p2(i)%p=>x(i)
end do
call s(p1,p2,5)
      print *,'pass'
      end
