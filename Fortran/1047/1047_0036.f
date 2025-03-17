      program main
      integer*2 ia
      integer*4 ib, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 1
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(*:ia) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia = ia * (mod(it,5)+1)
!$omp end parallel
      ib = 1
      do i=1,thread
          ib = ib * (mod(i,5)+1)
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

