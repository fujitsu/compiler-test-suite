      program main
      call omp_set_dynamic(.false.)
      CALL OMP_SET_NUM_THREADS(4)
!$OMP PARALLEL
      i=100
!$OMP DO firstprivate(i),lastprivate(i)
      do j=1,100
        i=i+1
      enddo
!$OMP END DO
      if (i/=125) PRINT *,'NG---i=',i
!$OMP END PARALLEL
      PRINT *,'OK'
      end
