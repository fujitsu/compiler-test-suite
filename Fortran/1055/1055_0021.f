      program main
      integer*4 ia
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      ia = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel
!$omp atomic
      ia = ia + 1
!$omp end parallel
      write(*,*) "----- test -- parallel -----"
      if(ia .eq. thread) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  PARALLEL Directive is not active!"
         write(*,*) "      ia=", ia, "  It must be ", thread
      end if
      stop
      end

