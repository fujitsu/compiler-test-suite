      program main
      integer*4 ia, ib, it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(ior:ia) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ia = (it+1)*10
!$omp end parallel
      ib = 0
      do i=0,thread-1
          ib = ior( ib, (i+1)*10 )
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(ior:ia) ",
     +                                        "private(it) -----"
      if(ia.eq.ib) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(IOR) clause is incorrect"
         write(*,*) "     ia=", ia, "  It must be ", ib
      end if
      stop
      end

