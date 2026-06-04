      logical*8 r1/.false./,r2/.false./
      logical*8 x(10)/.true.,.false.,.true.,.false.,.true.,
     &                .false.,.true.,.false.,.true.,.false./
!$omp simd reduction(.neqv.:r1)
      do i=1,10
        r1=r1.neqv.x(i)
      enddo
      do i=1,10
        r2=r2.neqv.x(i)
      enddo
      if (r1.neqv.r2) then
        print*,"NG:",r1,r2
        stop 1
      endif
      print*,"OK"
      end
