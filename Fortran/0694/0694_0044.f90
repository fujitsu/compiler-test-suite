      type e1
         integer, pointer :: p
      end type
      type (e1),target:: t(5)
      type y
       type (e1),pointer::  p1(:),p2(:)
      end type
      type (y)::v1,v2
      integer,target:: x(5)=(/1,2,3,4,5/)

      do i=1,5
       t(i)%p=>x(i)
      end do
      v1%p1=>t
      v2%p2=>t

      if (v1%p1(1)%p /=1)print *,1,v1%p1(1)%p
      if (v1%p1(2)%p /=2)print *,2,v1%p1(2)%p
      if (v1%p1(3)%p /=3)print *,3,v1%p1(3)%p
      if (v1%p1(4)%p /=4)print *,4,v1%p1(4)%p
      if (v1%p1(5)%p /=5)print *,5,v1%p1(5)%p
      forall (i = 2:5)
         v1%p1(i)%p => v2%p2(i-1)%p
      end forall

      if (v1%p1(1)%p /=1)print *,1,v1%p1(1)%p
      if (v1%p1(2)%p /=1)print *,2,v1%p1(2)%p
      if (v1%p1(3)%p /=2)print *,3,v1%p1(3)%p
      if (v1%p1(4)%p /=3)print *,4,v1%p1(4)%p
      if (v1%p1(5)%p /=4)print *,5,v1%p1(5)%p
      print *,'pass'
      end
