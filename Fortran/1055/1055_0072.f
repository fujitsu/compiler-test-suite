      program main
      integer*4 ia(50), ib(50), ic, id, it, ier
      integer*4 :: loop=50
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp do schedule(guided,loop)
      do i=1, loop
         ia(i) = it
      end do
!$omp end do
!$omp end parallel
      ib=0
      ic=0
      id=0
      do i=1, loop
         if (ia(i).ne.id .or. ic.eq.0) then
             ic=ic+1
             id=ia(i)
         endif
         ib(ic)=ib(ic)+1
      end do
      ier=0
      i=1
      do while(ib(i+1).ne.0 .or. i.ge.loop)
          if ( ib(i).lt.ib(i+1) ) ier=ier+1
          i=i+1
      enddo
      if ( ib(1).ne.loop ) ier=ier+1
      if ( i.gt.1 ) ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)",
     +                " do schedule(guided,loop) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SCHEDULE(GUIDED) clause is incorrect"
         write(*,*) "     ia=", ia
         write(*,*) "     ib=", ib
      endif
      stop
      end

