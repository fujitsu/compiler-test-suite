      program main
      integer*4 ia(50), ib, ic(50), it, ier
      integer*4 :: loop=50
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp do ordered
      do i=1, loop
!$omp ordered
         ib = ib + 1
         ia(i) = ib
!$omp end ordered
         ic(i) = it
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1, loop
         if(ia(i).ne.i) ier=ier+1
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel do orderd -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  DO ORDERD directive is not active"
         write(*,*) "     ia=",ia
         write(*,*) "     ic=",ic
      endif
      stop
      end

