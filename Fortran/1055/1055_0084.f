      program main
      integer*4 ia(150), ib(10), ic(10), it, ier
      integer*4 :: loop=150, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
      ic = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp master
      do i = 1,loop
          ia(i) = i*19/7+i*13/3*(-1)**mod(i,2)
      enddo
!$omp end master
      ib(it)=ia(loop)
!$omp barrier
      ic(it)=ia(loop)
!$omp end parallel
      ier=0
      do i=1,thread
          if(ic(i).ne.ia(loop)) ier=ier+1
      enddo
      write(*,*) "------ test --"
      write(*,*) "       parallel private(it)"
      write(*,*) "       master barrier -----"
      if ( ier.eq.0 ) then
          write(*,*) "OK"
      else
          write(*,*) "NG!  BARRIER directive not active!"
          write(*,*) "     before BARRIER=", ib
          write(*,*) "      after BARRIER=", ic
      endif
      stop
      end

