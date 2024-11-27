      program main
      integer OMP_GET_THREAD_NUM
      integer a(20),id(20),ierr
!$omp parallel if(.false.)
!$omp do schedule(DYNAMIC)
      do i=1,20 
          id(i) = OMP_GET_THREAD_NUM()
          a(i) = i
      enddo
!$omp end do
!$omp end parallel

      ierr = 0
      do i=1,20
          if( (a(i) .ne. i) .or. (id(i) .ne. 0) ) then
             ierr = 1
          endif
      enddo

      if( ierr .eq. 0 ) then
          print *,"OK"
      else
          print *,"NG"
      endif

      end
