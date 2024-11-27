      program main
      call sub()
      end

      subroutine sub()
      integer OMP_GET_THREAD_NUM
      integer a(20),id(20)
      integer b(20),id2(20),ierr
!$omp parallel if(.false.)
!$omp parallel if(.false.)
!$omp do schedule(DYNAMIC)
      do i=1,20 
          id(i) = OMP_GET_THREAD_NUM()
          a(i) = i
      enddo
!$omp end do
!$omp do schedule(STATIC)
      do j=1,20 
          id2(j) = OMP_GET_THREAD_NUM()
          b(j) = j
      enddo
!$omp end do
!$omp end parallel
!$omp end parallel
C
      ierr = 0
      do i=1,20
          if( (a(i) .ne. i) .or. (id(i) .ne. 0) ) then
             ierr = 1
          endif
          if( (b(i) .ne. i) .or. (id2(i) .ne. 0) ) then
             ierr = 1
          endif
      enddo
C
      if( ierr .eq. 0 ) then
          print *,"OK"
      else
          print *,"NG"
      endif
C
      end
