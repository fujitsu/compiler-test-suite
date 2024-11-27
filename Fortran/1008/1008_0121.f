c
c
c
c
c
      program main
      logical*8 ia(10), ib(10)
      integer*4 ich(10)
      integer*4 :: ier = 0
!$    integer*4 OMP_GET_THREAD_NUM
c
      ia = .false.
      ib = .false.
c
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections private(ia)
      ia(it)=.true.
      ib(it)=ia(it)
      ich(1) = it
!$omp section
      ia(it)=.true.
      ib(it)=ia(it)
      ich(2) = it
!$omp section
      ia(it)=.true.
      ib(it)=ia(it)
      ich(3) = it
!$omp end sections
!$omp end parallel
c
      do i=1,3
          if( ib(ich(i)).neqv..true. ) then
             ier = ier+1
          endif
      enddo

      do i=1,10
      if (ia(i).neqv..false.) then
         ier = ier+1
      endif
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      sections private(ia) ------"
      if((ier .eq. 0) ) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  SECTIONS PRIVATE clause is not active"
         write(*,*) "     ib=", ib
         write(*,*) "    ich=", ich
      endif
      stop
      end
