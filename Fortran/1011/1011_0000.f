      program main
      complex*8 ca, cb(10)
      integer*4 it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ca = cmplx(9,9)
      cb = cmplx(0,0)
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ca,it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ca=cmplx(it,it)
      cb(it) = ca
!$omp end parallel
      ier = 0
      do i=1,thread
          if (cb(i).ne.cmplx(i,i)) ier=ier+1
      enddo
      do i=thread+1, loop
          if (cb(i).ne.cmplx(0.0)) ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(ca,it) ------"
      if(ca.eq.cmplx(9,9) .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ca=", ca, " It must be (9,9)"
         write(*,*) "     cb=",cb
      endif
      stop
      end

