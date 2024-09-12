      i1 = 1
      i2 = 2
      k = 100
!$omp parallel do ordered,if(i1==i2),shared(k)
      do i=1,10
!$omp ordered
        k=1
!$omp end ordered
      enddo
!$omp end paralleldo
      print *,'pass'
      end
