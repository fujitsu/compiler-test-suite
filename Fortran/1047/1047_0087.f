      program main
      integer*4 ia, ib, ic
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      ia = 10
      ic = 11
!$    thread = OMP_GET_MAX_THREADS()
      call sub(ia, ic)
      ib = 10
      do i=0, thread-1
          ib = ib + i + ic
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

      subroutine sub(ia, ic)
      integer*4 ia, ic
      integer*4 it
!$    integer*4 OMP_GET_THREAD_NUM
!$omp parallel reduction(+:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = ia + it + ic
!$omp end parallel
      return
      end
