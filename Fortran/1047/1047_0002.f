      program main
      integer*4 ia, ib(50), ier
      integer*4 :: loop=50
      ia = 99
      ib = 0
      ier = 0
!$omp parallel do private(ia)
      do j=1, loop
          ia = j
          ib(j) = ia
      end do
!$omp end parallel do
      if(ia.ne.99) ier=ier+1
      do j=1, loop
          if (ib(j).ne.j) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do private(ia) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ia=",ia, "  It must be 99"
         write(*,*) "     ib=",ib
      endif
      stop
      end
