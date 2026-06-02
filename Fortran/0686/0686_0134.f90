      i =0
      j1=1
      j2=1
      j3=1
      j4=1
      j5=1
!$omp parallel default(shared)

!$omp do
      do k=1,10
!$omp atomic
        i=max(i,j1+1,j2+2,j3+3,j4+4,j5+5,k)
      enddo
      if (i/=10) print *,"fail"
!$omp barrier
!$omp do
      do k=5,-5,-1
!$omp atomic
        i=min(j1+1,j2+2,i,k,j3+3,j4+4,j5+5)
      enddo
      if (i/=-5) print *,"fail"
!$omp end parallel

      print *,'pass'
      end
