      type element
         character, pointer :: p
      end type
      type (element) q(5)

      character, target, dimension(5)::t

      do i = 1,5
         q(i)%p => t(i)
      enddo 

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 5
         t(i) = char(i)
      enddo
      if (q(1)%p /= char(1))print *,"fail"
      if (q(2)%p /= char(1))print *,"fail"
      if (q(3)%p /= char(2))print *,"fail"
      if (q(4)%p /= char(3))print *,"fail"
      if (q(5)%p /= char(4))print *,"fail"
      print *,'pass'
      end
