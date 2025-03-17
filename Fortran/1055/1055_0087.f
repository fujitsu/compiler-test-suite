      program main
      integer*4 ia(1000*2), ib, ic, ier
      integer*4 :: loop=1000
      ia = 0
      ib = 0
!$omp parallel
!$omp do private(ic)
      do i=1,loop
!$omp critical
         ib = ib + 1
         ia(ib)=i
         ic=0
         do j=1,loop*3
            ic=ic+1
         enddo
         ib = ib + 1
         ia(ib)=i
!$omp end critical
      enddo
!$omp end do
!$omp end parallel
      ier=0
      do i=1,loop*2,2
         if(ia(i).ne.ia(i+1)) then
            ier=ier+1
            write(*,*) "E  i=",i," ia(i)=",ia(i)," ia(i+1)=",ia(i+1)
         endif
      enddo
      write(*,*) "----- test--"
      write(*,*) "      parallel do private(ic) critical -----"
      if(ib.eq.loop*2 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  CRITICEL Directive is not active!"
         write(*,*) "     ib=", ib, "  It must be ",loop*2
         write(*,*) "     ier=", ier
      endif
      stop
      end

