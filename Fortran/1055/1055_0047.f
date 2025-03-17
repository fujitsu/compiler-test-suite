      program main
      integer*4 ia, ib(10), ier
      integer*4 :: loop = 10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      ia = 9
      ib = 9
!$    thread = OMP_GET_MAX_THREADS()
      call sub(ia, ib)
      ier = 0
      do i=1,thread
          if (ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.9) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "     parallel default(private) shared(ib) -----"
      if(ia.eq.9 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  DEFAULT(PRIVATE) clause is not active!"
         write(*,*) "     ia=", ia, " It must be 9"
         write(*,*) "     ib=",ib
      endif
      stop
      end

      subroutine sub(ia, ib)
      integer*4 ia, ib(10)
!$    integer*4 OMP_GET_THREAD_NUM
!$omp parallel default(private) shared(ib)
!$    ia = OMP_GET_THREAD_NUM() + 1
      ib(ia) = ia
!$omp end parallel
      return
      end
