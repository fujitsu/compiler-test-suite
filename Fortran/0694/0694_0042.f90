      type e1
         integer, pointer :: p
      end type
      type (e1),target:: t(5)
      type (e1),pointer::  p1(:),p2(:)
      integer,target:: x(5)=(/1,2,3,4,5/)

      do i=1,5
       t(i)%p=>x(i)
      end do
      p1=>t
      p2=>t

      forall (i = 2:5)
         p1(i)%p => p2(i-1)%p
      end forall

      if (p1(1)%p /=1)print *,"fail"
      if (p1(2)%p /=1)print *,"fail"
      if (p1(3)%p /=2)print *,"fail"
      if (p1(4)%p /=3)print *,"fail"
      if (p1(5)%p /=4)print *,"fail"
      print *,'pass'
      end
