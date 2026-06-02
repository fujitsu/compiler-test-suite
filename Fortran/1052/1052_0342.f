      real*16 sum1/1.0_16/,sum2/1.0_16/
      do i=1,10
        sum1=sum1*real(i,16)
      enddo
!$omp simd reduction(*:sum2)
      do i=1,10
        sum2=sum2*real(i,16)
      enddo
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
