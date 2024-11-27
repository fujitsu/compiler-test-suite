c
c
c
c
c
      program main
      character*4 ia(10), ib(10),ic(10)
      integer*4 ich(10)
      integer*4 :: ier = 0
!$    integer*4 OMP_GET_THREAD_NUM
c
      ia = 'fals'
      ib = 'fals'
      ic = 'true'
c
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp sections private(ia)
      ia(it)='true'
      ib(it)=ia(it)
      ich(1) = it
!$omp section
      ia(it)='true'
      ib(it)=ia(it)
      ich(2) = it
!$omp section
      ia(it)='true'
      ib(it)=ia(it)
      ich(3) = it
!$omp end sections
!$omp end parallel
c
      do i=1,3
          if( ib(ich(i)) .ne.'true') then
             ier = ier+1
          endif
      enddo

      do i=1,10
      if (ia(i) .ne. 'fals') then
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
         write(*,*) "     ic=", ic
         write(*,*) "    ich=", ich
      endif
      stop
      end
