      logical*1 r1/.true./,r2/.true./
      logical*1 x(10)/10*.true./
!$omp simd reduction(.and.:r1)
      do i=1,10
        r1=r1.and.x(i)
      enddo
      do i=1,10
        r2=r2.and.x(i)
      enddo
      if (r1.neqv.r2) then
        print*,"NG:",r1,r2
        stop 1
      endif
      print*,"OK"
      end
