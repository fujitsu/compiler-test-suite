      program main
      integer*4 ia(10), ib, im, it, ier
      integer*4 :: loop=10, loop2=10000, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      im = 99
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ib,it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ib=0
      do i=1,loop2
          ib = ib + 1
      enddo
!$omp master
      im = it
      do i=1,loop2
          ib = ib + 1
      enddo
!$omp end master
      ia(it)=ib
!$omp end parallel
      ier=0
      do i=1,thread
          if( i .eq. im ) then
              if(ia(i).ne.loop2*2) ier=ier+1
          else
              if(ia(i).ne.loop2) ier=ier+1
          endif
      enddo
      do i=thread+1,loop
          if(ia(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel master -----"
      if(im-1.eq.0 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  MASTER Directive is not active!"
         write(*,*) "     im=", im
         write(*,*) "     ia=", ia
      endif
      stop
      end

