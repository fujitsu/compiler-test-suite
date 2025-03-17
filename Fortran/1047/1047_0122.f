      program main
      integer*4 ia, ib(50), ier
      integer*4 :: loop=50
      ia = 99
      ib = 0
      ier = 0
      call sub(ia, ib, ier, loop)
      do j=1, loop
          if (ib(j).ne.j) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ia) ------"
      if(ia.eq.99 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ia=",ia, "  It must be 99"
         write(*,*) "     ib=",ib
      endif
      stop
      end

      subroutine sub(ia, ib, ier, loop)
      integer*4 ia, ib(50), ier
      integer*4 loop
!$omp parallel
!$omp do private(ia)
      do j=1, loop
          ia = j
          ib(j) = ia
      end do
!$omp end do
      if(ia.ne.99)then
!$omp atomic
          ier=ier+1
      endif
!$omp end parallel
      return
      end
