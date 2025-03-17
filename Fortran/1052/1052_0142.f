      integer sum1/10/,sum2/10/
      do i=1,100
        sum1=sum1+i
      enddo
!$omp parallel
!$omp do simd reduction(+:sum2)
      do i=1,100
        sum2=sum2+i
      enddo
!$omp end parallel
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
