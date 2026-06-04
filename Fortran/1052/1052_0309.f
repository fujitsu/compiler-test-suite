      logical*2,allocatable::r1,r2
      logical*2 x(10)/.true.,.false.,.true.,.false.,.true.,
     &                .false.,.true.,.false.,.true.,.false./
      allocate(r1,r2)
      r1=.false.
      r2=.false.
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
