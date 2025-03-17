      program main
      integer*1 ia, ib(10)
      integer*4 ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      ia = 9
      ib = 9
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ia)
      call sub(ia, ib)
!$omp end parallel
      ier = 0
      do i=1,thread
          if (ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.9) ier=ier+1
      enddo
      write(*,*) "----- test --",
     +                        " parallel private(ia) ------"
      if(ia.eq.9 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ia=", ia, " It must be 9"
         write(*,*) "     ib=",ib
      endif
      stop
      end

      subroutine sub(ia, ib)
      integer*1 ia, ib(10)
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 it
!$    it = OMP_GET_THREAD_NUM() + 1
      ia=it
      ib(it) = ia
      return
      end
