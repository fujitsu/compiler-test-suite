      program main
      complex*8 ca, cb(10)
      integer*4 it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ca = (9,0)
      cb = (0,5)
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel shared(ca) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      cb(it) = ca
!$omp end parallel
      ier = 0
      do i=1,thread
          if (cb(i).ne.(9,0)) ier=ier+1
      enddo
      do i=thread+1, loop
          if (cb(i).ne.(0,5)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel shared(ca) private(it) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SHARED clause is not active"
         write(*,*) "     OMP_GET_MAX_THREADS()=", thread
         write(*,*) "     cb=",cb
      end if
      stop
      end

