      logical*8 r1(10)/10*.false._8/,r2(10)/10*.false._8/
      logical*8 x(10)/.true._8,9*.false._8/
!$omp simd reduction(.or.:r1)
      do i=1,10
        r1(i)=r1(i).or.x(i)
      enddo
      do i=1,10
        r2(i)=r2(i).or.x(i)
      enddo
      do i=1,10
        if (r1(i).neqv.r2(i)) then
          print*,"NG:",i,r1(i),r2(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end
