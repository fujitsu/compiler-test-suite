      integer*2 sum1/10/,sum2/10/
      do i=1,100
        sum1=sum1+int(i,2)
      enddo
!$omp simd reduction(+:sum2)
      do i=1,100
        sum2=sum2+int(i,2)
      enddo
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
