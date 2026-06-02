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
      write(3,*)q(1)%p
      write(3,*)q(2)%p
      write(3,*)q(3)%p
      write(3,*)q(4)%p
      write(3,*)q(5)%p
      if (q(3)%p == 1)print *,"fail"
      print *,'pass'
      end
