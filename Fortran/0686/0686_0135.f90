      j1=1
      j2=2
      j3=3
      j4=4
      j5=5
      call sub(j1,j2,j3,j4,j5)
      print *,'pass'
      end

      subroutine sub(j1,j2,j3,j4,j5)
      i =0
!$omp parallel default(shared)

!$omp do
      do k=1,10
!$omp atomic
        i=max(i,ifun(j1+1),ifun(j2+2),ifun(j3+3),ifun(j4+4),ifun(j5+5),k)
      enddo
!$omp end do
      if (i/=100) print *,"fail"

!$omp end parallel

      end

      function ifun(m)

      ifun=m*10

      end
