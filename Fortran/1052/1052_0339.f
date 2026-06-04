      integer*4 sum1/1/,sum2/1/
      do i=1,12
        sum1=sum1*i
      enddo
!$omp simd reduction(*:sum2)
      do i=1,12
        sum2=sum2*i
      enddo
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
