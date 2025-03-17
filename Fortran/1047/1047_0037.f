      program main
      integer*1 ia
      integer*4 ib, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 1
!$    thread = OMP_GET_MAX_THREADS()
!$    if(thread.gt.4) then          
!$      thread = 4
!$      call omp_set_num_threads(4)
!$    endif 
!$omp parallel reduction(*:ia) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia = ia * (mod(it,3)+1)
!$omp end parallel
      ib = 1
      do i=1,thread
         ib = ib * (mod(i,3)+1)
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

