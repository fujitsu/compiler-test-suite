      type element
         integer, pointer :: p
      end type
      type (element) q(5)

      integer, target, dimension(5)::t

      do i = 1, 5
         t(i) = i
      enddo
      do i = 1,5
         q(i)%p => t(i)
      enddo 

      forall (i = 2:5)
         q(i)%p = q(i-1)%p 
      end forall

      if (q(1)%p /= 1)print *,"fail"
      if (q(2)%p /= 1)print *,"fail"
      if (q(3)%p /= 2)print *,"fail"
      if (q(4)%p /= 3)print *,"fail"
      if (q(5)%p /= 4)print *,"fail"
      print *,'pass'
      end
