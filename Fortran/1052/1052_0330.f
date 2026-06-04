      complex*32 sum1/(1.0_16,1.0_16)/,sum2/(1.0_16,1.0_16)/
      do i=1,12
        sum1=sum1*cmplx(i,i,16)
      enddo
!$omp simd reduction(*:sum2)
      do i=1,12
        sum2=sum2*cmplx(i,i,16)
      enddo
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
