      program main
      integer*4 it, ier
      integer*4 :: loop = 10, thread=4
      character*10 sa, sb(10),sc
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      sa = 'abc'
      sb = ' '
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel firstprivate(sa) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      write(sb(it),"(a3,i2.2)") sa,it
      write(sa,"(i2.2)") it
!$omp end parallel
      ier = 0
      do i=1,thread
         write(sc,"(a3,i2.2)") sa,i
         if (sb(i).ne.sc) ier=ier+1
      enddo
      do i=thread+1, loop
         if (sb(i).ne.' ') ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel firstprivate(sa) private(it) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     sa=",sa
         write(*,*) "     sb=",sb
      endif
      stop
      end

