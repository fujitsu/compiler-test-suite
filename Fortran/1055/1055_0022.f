      program main
      integer*4 it, ier
      integer*4 :: loop = 10, thread=4
      character*10 sa, sb(10), sc
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      sa = 'abc'
      sb = ' '
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(sa,it)
!$    it = OMP_GET_THREAD_NUM() + 1
      write(sa,"(I2.2)") it
      sb(it) = sa
!$omp end parallel
      ier = 0
      do i=1,thread
         write(sc,"(I2.2)") i
         if (sb(i).ne.sc) ier=ier+1
      enddo
      do i=thread+1, loop
         if (sb(i).ne.' ') ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(sa,it) ------"
      if(sa.eq.'abc' .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     sa=",sa
         write(*,*) "     sb=",sb
      endif
      stop
      end

