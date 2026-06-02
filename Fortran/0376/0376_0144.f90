      type element
         integer, pointer :: p
      end type
      type (element) q(5)
      
      integer, target, dimension(5)::t

      n = 5
      do i = 1,5
         q(i)%p => t(i)
      enddo 

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 5
         t(i) = i
      enddo
      if (q(3)%p == 1)print *,'fail'
      print *,'pass'
      end

