      program main
      integer*4 ia, ib(10),ic , it, ier
      integer*4 :: loop = 10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 99
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp single private(ia)
      ia = it
      ib(ia) = ia
!$omp end single
!$omp end parallel
      ic = 0
      ier = 0
      do i=1,thread
          if (ib(i).eq.i) then
              ic=ic+1
          else
              if (ib(i).ne.0) ier=ier+1
          endif
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      single private(ia) ------"
      if(ia.eq.99 .and. ic.eq.1 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SINGLE PRIVATE clause is not active"
         write(*,*) "     OMP_GET_MAX_THREADS() = ", thread
         write(*,*) "     ia=", ia, " It must be ""99"""
         write(*,*) "     ic=", ic, " It must be ""1"""
         write(*,*) "     ib=",ib
      end if
      stop
      end

