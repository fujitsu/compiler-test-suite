      integer sum1/10/,sum2/10/
      real*8 sum1d/0.0_8/,sum2d/0.0_8/
      do i=1,100
        sum1=sum1+i
        sum1d=sum1d+dble(i)
      enddo
!$omp parallel
!$omp do simd reduction(+:sum2,sum2d)
      do i=1,100
        sum2=sum2+i
        sum2d=sum2d+dble(i)
      enddo
!$omp end parallel
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      if (sum1d .ne. sum2d) then
        print*,"NG", sum1d, sum2d
        stop 1
      endif
      print*,"OK"
      end
