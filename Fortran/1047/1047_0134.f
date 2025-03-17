      program main
      integer*4 ia, ib(50), ier
      integer*4 :: loop=50
      ia = 0
      ib = 0
!$omp parallel
      call sub(ia, ib, loop)
!$omp end parallel
      ier = 0
      do i=1,loop
          if (ib(i).ne.i) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ia) -----"
      if(ier.eq.0 .and. ia-1.eq.loop) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ia=",ia,"  It must be ",loop+1
         write(*,*) "     ier=",ier
         write(*,*) "     ib=",ib
      end if
      stop
      end

      subroutine sub(ia, ib, loop)
      integer*4 ia, ib(50)
      integer*4 loop
!$omp do lastprivate(ia)
      do ia=1,loop
          ib(ia) = ia
      enddo
!$omp end do
      return
      end
