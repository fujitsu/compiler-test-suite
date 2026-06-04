      type element
         complex, pointer :: p(:)
      end type
      type (element) q(5)

      complex, target, dimension(5,2)::t

      do i = 1,5
         q(i)%p => t(i,:)
      enddo 

      forall (i = 2:5)
         q(i)%p => q(i-1)%p
      end forall

      do i = 1, 5
         t(i,1) = cmplx(i,i)
         t(i,2) = cmplx(i+1,i+1)
      enddo
      if (abs(q(1)%p(1) -(1,1))>0.001)print *,"fail"
      if (abs(q(2)%p(1) -(1,1))>0.001)print *,"fail"
      if (abs(q(3)%p(1) -(2,2))>0.001)print *,"fail"
      if (abs(q(4)%p(1) -(3,3))>0.001)print *,"fail"
      if (abs(q(5)%p(1) -(4,4))>0.001)print *,"fail"
      if (abs(q(1)%p(2) -(1,1)-(1,1))>0.001)print *,"fail"
      if (abs(q(2)%p(2) -(1,1)-(1,1))>0.001)print *,"fail"
      if (abs(q(3)%p(2) -(2,2)-(1,1))>0.001)print *,"fail"
      if (abs(q(4)%p(2) -(3,3)-(1,1))>0.001)print *,"fail"
      if (abs(q(5)%p(2) -(4,4)-(1,1))>0.001)print *,"fail"
      print *,'pass'
      end
