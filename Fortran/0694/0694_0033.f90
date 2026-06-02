module m1
      type element
         integer, pointer :: p
      end type
contains
   subroutine s(q,qq,t,tt)
      type (element) q(:),qq(:)
      integer, target, dimension(:)::t,tt

      do i = 1,5
         q(i)%p => t(i)
         qq(i)%p => tt(i)
      enddo 
      do i = 1, 5
         t(i) = i
         tt(i) = i
      enddo

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
         qq(i)%p = q(i-1)%p
      end forall

      if (q(1)%p /= 1)print *,"fail"
      if (q(2)%p /= 1)print *,"fail"
      if (q(3)%p /= 2)print *,"fail"
      if (q(4)%p /= 3)print *,"fail"
      if (q(5)%p /= 4)print *,"fail"
      if (qq(1)%p /= 1)print *,"fail"
      if (qq(2)%p /= 1)print *,"fail"
      if (qq(3)%p /= 1)print *,"fail"
      if (qq(4)%p /= 2)print *,"fail"
      if (qq(5)%p /= 3)print *,"fail"
end subroutine
end
use m1
      type (element) q(5),qq(5)
      integer, target, dimension(5)::t,tt
call s(q,qq,t,tt)
      print *,'pass'
      end
