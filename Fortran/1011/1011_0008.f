      program main
      complex*16 ca, cb
      integer*4 it
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ca = (10,0)
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel reduction(+:ca) private(it)
!$    it = OMP_GET_THREAD_NUM()
      ca = ca + cmplx(it,11)
!$omp end parallel
      cb = (10,0)
      do i=0, thread-1
          cb = cb + cmplx(i,11)
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel reduction(+:ca) private(it) -----"
      if(abs(ca-cb).le.abs(cb)*1e-10) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(+) clause is incorrect!"
         write(*,*) "     ca=", ca
         write(*,*) "     cb=", cb
      endif
      stop
      end

