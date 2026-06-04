      logical*4 r1(10)/10*.false./,r2(10)/10*.false./
      logical*4 x(10)/.true.,.false.,.true.,.false.,.true.,
     &                .false.,.true.,.false.,.true.,.false./
!$omp simd reduction(.eqv.:r1)
      do i=1,10
        r1(i)=r1(i).eqv.x(i)
      enddo
      do i=1,10
        r2(i)=r2(i).eqv.x(i)
      enddo
      do i=1,10
        if (r1(i).neqv.r2(i)) then
          print*,"NG:",i,r1(i),r2(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end
