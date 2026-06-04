      logical*4 r1(10)/10*.true./,r2(10)/10*.true./
      logical*4 x(10)/10*.true./
!$omp simd reduction(.and.:r1)
      do i=1,10
        r1(i)=r1(i).and.x(i)
      enddo
      do i=1,10
        r2(i)=r2(i).and.x(i)
      enddo
      do i=1,10
        if (r1(i).neqv.r2(i)) then
          print*,"NG:",r1,r2
          stop 1
        endif
      enddo
      print*,"OK"
      end
