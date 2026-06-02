      integer(2),dimension(3,2)::x,y
!$omp parallel workshare
      x =reshape((/1_2,2_2,3_2,4_2/),(/3,2/),pad=(/0_2/))
      y =reshape((/1_2,2_2,3_2,4_2,0_2,0_2/),(/3,2/))
!$omp end parallel workshare
      if (any(x/=y)) print *,"fail"
      print *,'pass'
      end
