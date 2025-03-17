      integer*8 sum1/1/,sum2/1/
      do i=1,20
        sum1=sum1*int(i,8)
      enddo
!$omp do simd reduction(*:sum2)
      do i=1,20
        sum2=sum2*int(i,8)
      enddo
      if (sum1 .ne. sum2) then
        print*,"NG", sum1, sum2
        stop 1
      endif
      print*,"OK"
      end
