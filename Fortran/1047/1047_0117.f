      program main
      integer*4 ia, ib(50), ic(50), ier
      integer*4 :: loop=50
      ia = 5
      do i=1,loop
          ib(i) = i*(i-(i/3))*(-1)**i
      enddo
!$omp parallel
!$omp do firstprivate(ib) lastprivate(ia)
      do ia=1,loop
          call sub(ia, ib, ic)
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
          if (ic(i).ne.ib(i)+i) ier=ier+1
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
         write(*,*) "     ic=",ic
      end if
      stop
      end

      subroutine sub(ia, ib, ic)
      integer*4 ia, ib(50), ic(50)
      ic(ia) = ib(ia) + ia
      return
      end
