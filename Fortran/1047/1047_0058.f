      program main
      integer*4 ia, ib, id, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 10
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(+:ia) reduction(max:id) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = ia + ( it + 11 )
      id = it
!$omp end parallel
      ib = 10
      do i=0, thread-1
          ib = ib + i + 11
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(+:ia) reduction(max:id)",
     +                 " private(it) -----"
      if(ia.eq.ib .and. id.eq.thread-1) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(+) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
         write(*,*) "     id=", id, "  It must be ", thread-1
      end if
      stop
      end

