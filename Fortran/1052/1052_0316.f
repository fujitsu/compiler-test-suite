      logical*2 r1(10)/10*.false._2/,r2(10)/10*.false._2/
      logical*2 x(10)/.true._2,.false._2,.true._2,.false._2,.true._2,
     &                .false._2,.true._2,.false._2,.true._2,.false._2/
!$omp simd reduction(.neqv.:r1)
      do i=1,10
        r1(i)=r1(i).neqv.x(i)
      enddo
      do i=1,10
        r2(i)=r2(i).neqv.x(i)
      enddo
      do i=1,10
        if (r1(i).neqv.r2(i)) then
          print*,"NG:",i,r1(i),r2(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end
