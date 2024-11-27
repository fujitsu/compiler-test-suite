      program main
      complex*8 ca, cb(10)
      integer*4 it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ca = (3,0)
      cb = (9,9)
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel firstprivate(ca) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      cb(it) = ca + cmplx(0,it)
!$omp end parallel
      ier = 0
      do i=1,thread
          if (cb(i).ne.cmplx(3,i)) ier=ier+1
      enddo
      do i=thread+1, loop
          if (cb(i).ne.(9,9)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel firstprivate(ca) private(it) ------"
      if(ca.eq.(3,0) .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     OMP_GET_MAX_THREADS() = ", thread
         write(*,*) "     ca=", ca, " It must be (3,0)"
         write(*,*) "     cb=",cb
      end if
      stop
      end

