      program main
      integer*4 ia(10), it, ier
      logical*4 la(10), lb, lc, ld
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
!$    logical*4 OMP_IN_PARALLEL
      ia=0
      la=.false.
!$    thread=OMP_GET_MAX_THREADS()
      lb=mod(thread,3).eq.1
      lc=thread.lt.2
      ld=OMP_IN_PARALLEL()
!$omp parallel if(lb.eqv.lc.neqv.ld) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia(it) = it
      la(it) = OMP_IN_PARALLEL()
!$omp end parallel
      ier =0
      if (lb.eqv.lc.neqv.ld) then
         do i=1,thread
            if( .not. la(i) ) ier=ier+1
         enddo
         do i=thread+1, loop
            if( la(i) ) ier=ier+1
         enddo
      else
         thread=1
         do i=1,loop
            if( la(i) ) ier=ier+1
         enddo
      endif
      do i=1,thread
         if( ia(i) .ne. i ) ier=ier+1
      enddo
      do i=thread+1, loop
         if( ia(i) .ne. 0 ) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel if(lb.eqv.lc.neqv.ld)",
     +                " private(it) -----"
      if(ier .eq. 0) then
         write(*,*) "OK!"
      else
         write(*,*) "NG  IF Clause is incorrect"
         write(*,*) "     ier=",ier
         write(*,*) "     ia=",ia
         write(*,*) "     la=",la
         write(*,*) "     lb=",lb," lc=",lc," ld=",ld
      endif
      stop
      end

