      program main
      integer*4 ic(10), it, ier
      integer*4 :: loop=50, loop2=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 ia, ib
      common /com1/ ia, ib
      ia=0
      ib=0
      ic=0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ia,it)
      ia=0
!$    it=OMP_GET_THREAD_NUM()+1
!$omp do
      do j=1, loop
!$omp critical
         ia=ia+1
         ib=ib+1
!$omp end critical
         call sub()
      end do
!$omp end do
      ic(it)=ia
!$omp end parallel
      ier=0
      do i=1, thread
         if (ic(i).lt.loop/thread) ier=ier+1
      enddo
      do i=thread+1,loop2
         if (ic(i).ne.0) ier=ier+1
      enddo
      if (ia.ne.loop) ier=ier+1
      if (ib.ne.loop*2) ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      parallel private(ia,it) do ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     ier=", ier
         write(*,*) "     ia=", ia, "  It must be ", loop
         write(*,*) "     ib=", ib, "  It must be ", loop*2
         write(*,*) "     ic=", ic
      endif
      stop
      end

      subroutine sub()
      integer*4 ia, ib
      common /com1/ ia, ib
!$omp critical
      ia=ia+1
      ib=ib+1
!$omp end critical
      return
      end
