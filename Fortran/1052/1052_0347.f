      real*8 sum1/1.0_8/,sum2/1.0_8/
      do i=1,10
        sum1=sum1*real(i,8)
      enddo
!$omp simd reduction(*:sum2)
      do i=1,10
        sum2=sum2*real(i,8)
      enddo
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
