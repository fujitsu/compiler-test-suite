      logical*2 r1(10)/10*.false./,r2(10)/10*.false./
      logical*2 x(10)/.true.,9*.false./
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
