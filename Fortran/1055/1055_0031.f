      program main
      integer*4 ia, ib(10), ier
      integer*4 :: loop = 10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 9
      ib = 9
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel default(none) private(ia,i) shared(ib,thread)
!$    ia = OMP_GET_THREAD_NUM() + 1
      ib(ia) = ia
!$omp end parallel
      ier = 0
      do i=1,thread
          if (ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.9) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel default(none)",
     +                        " private(ia) shared(ib,thread) -----"
      if(ia.eq.9 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  DEFAULT(NONE) clause is not active!"
         write(*,*) "     ia=", ia, " It must be 9"
         write(*,*) "     ib=",ib
      endif
      stop
      end

