      program main
      integer*4 ia, ib(50), ier
      integer*4 :: loop=50
      ia = 99
      ib = 0
      ier = 0
!$omp parallel
!$omp do private(ia)
      do j=1, loop
          call sub(ia, ib, j)
      end do
!$omp end do
      if(ia.ne.99)then
!$omp atomic
          ier=ier+1
      endif
!$omp end parallel
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

      subroutine sub(ia, ib, j)
      integer*4 ia, ib(50)
          ia = j
          ib(j) = ia
      return
      end
