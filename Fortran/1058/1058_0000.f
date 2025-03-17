      program main
      real*4 ia, ib(10)
      integer*4 ier
      integer*4 :: loop = 10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM

      ia = 99.0
      ib = 99.0
!$    thread = OMP_GET_MAX_THREADS()

!$omp parallel private(ia)
!$    ia = OMP_GET_THREAD_NUM() + 1
      ib(int(ia)) = ia
!$omp end parallel

      ier = 0
      do i=1,thread
          if (ib(i).ne.real(i)) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.99.0) ier=ier+1
      enddo
      write(*,*) "----- parallel private(ia) ------"
      if(ia.eq.99.0 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   PRIVATE clause is not active"
         write(*,*) "     ia=", ia, " It must be 99.0"
         write(*,*) "     ib=",ib
      endif

      stop
      end

