      program main
      integer*8 ia, ib, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 3
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(*:ia) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia = ia * it
!$omp end parallel
      ib = 3
      do i=1,thread
          ib = ib * i
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(*:ia) private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(*) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

