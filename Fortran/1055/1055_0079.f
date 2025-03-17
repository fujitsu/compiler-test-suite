      program main
      integer*4 ia, ib, ic(10), it, ier
      integer*4 :: loop=50, loop2=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia=0
      ib=0
      ic=0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ia,it) shared(ib)
      ia=0
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp do
      do j=1, loop
         ia=ia+1
!$omp atomic
         ib=ib+1
         call sub(ia, ib)
      end do
!$omp end do
      ic(it)=ia
!$omp end parallel
      ier=0
      do i=1, thread
         if (ic(i).lt.loop/4) ier=ier+1
      enddo
      do i=thread+1,loop2
         if (ic(i).ne.0) ier=ier+1
      enddo
      if(ia.ne.0) ier=ier+1
      if(ib.ne.loop*2) ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      parallel private(ia,it) shared(ib)"
      write(*,*) "      do ------"
      if(ia.eq.0 .and. ib.eq.loop*2 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     ier=", ier
         write(*,*) "     ia=", ia, "  It must be 0"
         write(*,*) "     ib=", ib, "  It must be ", loop*2
         write(*,*) "     ic=", ic
      endif
      stop
      end

      subroutine sub(ia, ib)
      integer*4 ia, ib
      ia=ia+1
!$omp atomic
      ib=ib+1
      return
      end
