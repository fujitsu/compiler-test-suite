      program main
      integer*4 ib(50), ic(10), icnt
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel do
      do j=1, loop
!$       ib(j) = OMP_GET_THREAD_NUM() + 1
      end do
!$omp end parallel do
      ic = 0
      do j=1, loop
          do i=1, thread
              if (ib(j).eq.i) ic(i)=ic(i)+1
          enddo
      enddo
      icnt=0
      do i=1, thread
          icnt = icnt + ic(i)
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do ------"
      if(icnt.eq.loop) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     icnt=", icnt, "  It must be ", loop
         write(*,*) "     ic=", ic
         write(*,*) "     ib=", ib
      endif
      stop
      end
