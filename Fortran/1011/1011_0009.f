      program main
      complex*8 ca, cb
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ca = (3,1)
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(*:ca) private(it) private(i)
!$    it = OMP_GET_THREAD_NUM() + 1
      ca = ca * cmplx(it,it*2)
!$omp end parallel
      cb = (3,1)
      do i=1,thread
          cb = cb * cmplx(i,i*2)
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(*:ca) private(it) -----"
      if( abs(ca-cb) .le. abs(cb)*1e-4 ) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(*) clause is incorrect!"
         write(*,*) "     ca=", ca, "  It must be ", cb
      endif
      stop
      end

