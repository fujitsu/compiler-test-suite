      type element
         complex, pointer :: p
      end type
      type (element) q(5)

      complex, target, dimension(5)::t

      do i = 1,5
         q(i)%p => t(i)
      enddo 

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 5
         t(i) = cmplx(i,i)
      enddo
      if (abs(q(1)%p -(1,1))>0.001)print *,"fail"
      if (abs(q(2)%p -(1,1))>0.001)print *,"fail"
      if (abs(q(3)%p -(2,2))>0.001)print *,"fail"
      if (abs(q(4)%p -(3,3))>0.001)print *,"fail"
      if (abs(q(5)%p -(4,4))>0.001)print *,"fail"
      print *,'pass'
      end
