      logical*4 r1/.false./,r2/.false./
      logical*4 x(10)/.true.,.false.,.true.,.false.,.true.,
     &                .false.,.true.,.false.,.true.,.false./
!$omp simd reduction(.eqv.:r1)
      do i=1,10
        r1=r1.eqv.x(i)
      enddo
      do i=1,10
        r2=r2.eqv.x(i)
      enddo
      if (r1.neqv.r2) then
        print*,"NG:",r1,r2
        stop 1
      endif
      print*,"OK"
      end
