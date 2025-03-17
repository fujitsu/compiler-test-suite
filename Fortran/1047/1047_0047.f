      program main
      integer*8 ia, ib, ic, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 1
      ib = 1
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(iand:ia) private(ic,it)
!$    it = OMP_GET_THREAD_NUM()
      ic = (it+1)*11
      if ( mod(ic,2).eq.0 ) ic=ic+1
      ia = ic
!$omp end parallel
      do i=0,thread-1
          ic = (i+1)*11
          if ( mod(ic,2).eq.0 ) ic=ic+1
          ib = iand( ib, ic )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(iand:ia) ",
     +                                  "private(ic,it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(IAND) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      endif
      stop
      end

