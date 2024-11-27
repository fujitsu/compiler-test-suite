      program main
      complex*16 ca, cb
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ca = (3.0037,1.2964)
      cb = (3.0037,1.2964)
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(*:ca) private(it) private(i)
!$    it = OMP_GET_THREAD_NUM() + 1
      ca = ca * cmplx(it*957.321,it*760.904)
!$omp end parallel
      do i=1,thread
          cb = cb * cmplx(i*957.321,i*760.904)
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(*:ca) private(it) -----"
      if( abs(ca-cb) .le. abs(cb)*1e-10 ) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(*) clause is incorrect!"
         write(*,*) "     ca=", ca
         write(*,*) "     cb=", cb
      endif
      stop
      end

