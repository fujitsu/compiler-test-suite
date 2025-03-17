      program main
      integer*4 ia, ib, ic, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 10
      ic = 11
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(+:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      call sub(ia, ic, it)
!$omp end parallel
      ib = 10
      do i=0, thread-1
          call sub(ib, ic, i)
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(+:ia) private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(+) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

      subroutine sub(ia, ic, it)
      integer*4 ia, ic, it
      ia = ia + it + ic
      return
      end
