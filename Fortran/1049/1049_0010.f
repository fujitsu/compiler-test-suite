      program main
      integer*4 ia(10), ib, it, ier
      integer*4 :: loop=10
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
      ib = 0
!$omp parallel if(.false.) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ia(it) = it
!$omp atomic
      ib = ib+1
!$omp end parallel
      ier=0
      if ( ia(1) .ne. 1 ) ier=ier+1
      do i=2,loop
         if( ia(i) .ne. 0 ) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel if(.false.) private(it) -----"
      if(ier .eq. 0) then
         write(*,*) "OK!"
      else
         write(*,*) "NG  IF(.FALSE.) Clause is incorrect"
         write(*,*) "     ier=", ier
         write(*,*) "     ia=", ia, "  ib=",ib
      endif
      stop
      end

