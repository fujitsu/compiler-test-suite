      program main
      integer*4 ia(10), it, ier
      logical*8 la
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      la = .true.
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel if(la) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia(it) = it
!$omp end parallel
      ier=0
      do i=1,thread
          if( ia(i) .ne. i ) ier=ier+1
      enddo
      do i=thread+1, loop
          if( ia(i) .ne. 0 ) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel if(.true.) private(it) -----"
      if(ier .eq. 0) then
         write(*,*) "OK!"
      else
         write(*,*) "NG  IF(.TRUE.) Clause is incorrect"
         write(*,*) "     ier=", ier
         write(*,*) "     ia=", ia
      endif
      stop
      end

