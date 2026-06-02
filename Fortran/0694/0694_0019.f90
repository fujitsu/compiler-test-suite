      subroutine xf(i2,i5)
      type element
         integer, pointer :: p
      end type
      type (element) q(5)

      integer, target, dimension(5)::t

      do i = 1,5
         q(i)%p => t(i)
      enddo 

      forall (i = i2:i5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 5
         t(i) = i
      enddo
      write(10,*)q(1)%p
      write(10,*)q(2)%p
      write(10,*)q(3)%p
      write(10,*)q(4)%p
      write(10,*)q(5)%p
      if (q(3)%p == 1)print *,"fail"
      if (q(3)%p /= 2)print *,"fail"
      end
      call xf(2,5)
      print *,'pass'
      end
