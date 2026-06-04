      real*4 sum1/10.0_4/,sum2/10.0_4/
      do i=1,100
        sum1=sum1+real(i,4)
      enddo
!$omp simd reduction(+:sum2)
      do i=1,100
        sum2=sum2+real(i,4)
      enddo
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
