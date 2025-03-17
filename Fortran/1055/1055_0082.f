      program main
      integer*4 ia, ib(50), ic(10), icnt, ier
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      ia = 99
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ia)
      call sub(ia, ib, loop)
!$omp end parallel
      ic = 0
      do j=1, loop
          do i=1, thread
              if (ib(j).eq.i) ic(i)=ic(i)+1
          enddo
      enddo
      icnt=0
      ier=0
      do i=1, thread
          icnt = icnt + ic(i)
          if (ic(i).eq.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(ia)"
      write(*,*) "      do ------"
      if(ia.eq.99 .and. icnt.eq.loop .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     ia=", ia, "  It must be 99"
         write(*,*) "     icnt=", icnt, "  It must be ", loop
      endif
      stop
      end

      subroutine sub(ia, ib, loop)
      integer*4 ia, ib(50)
      integer*4 loop
!$    integer*4 OMP_GET_THREAD_NUM
!$    ia = OMP_GET_THREAD_NUM() + 1
!$omp do
      do j=1, loop
          ib(j) = ia
      end do
!$omp end do
      return
      end
