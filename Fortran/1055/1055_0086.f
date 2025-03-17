      program main
      integer*4 ia(2050), ib, ier
      integer*4 :: loop=2050
      integer*4 omp_get_thread_num
      ia = 0
      ib = 0
!$omp parallel
!$omp critical
      id = omp_get_thread_num()
      if (id.eq.0) then
      do i=1,loop
         ib = ib + 1
         ia(i)=ib
      enddo
      endif
!$omp end critical
!$omp end parallel
      ier=0
      do i=1,loop
         if(ia(i).eq.0)then
            ier=ier+1
            write(*,*) "E  i=",i,"  ia(i)=",ia(i)
         endif
      enddo
      write(*,*) "----- test--"
      write(*,*) "      parallel critical do -----"
      if(ier.eq.0 .and. ib.eq.loop) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  CRITICEL Directive is not active!"
         write(*,*) "     ier=", ier
      endif
      stop
      end

