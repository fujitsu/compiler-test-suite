      program main
      integer*4 ia(15000), ib, it, ier
      integer*4 :: loop=15000
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$omp parallel private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
!$omp do
      do i=1,loop
!$omp critical
          ib = ib + 1
          ia(ib)=it
!$omp end critical
      enddo
!$omp end do
!$omp end parallel
      ier=0
      do i=1,loop
          if(ia(i).eq.0) ier=ier+1
      enddo
      write(*,*) "----- test--"
      write(*,*) "      parallel private(it) do critical -----"
      if(ib.eq.loop .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  CRITICEL Directive is not active!"
         write(*,*) "     ib=", ib, "  It must be ",loop
         write(*,*) "     ier=", ier
      end if
      stop
      end

