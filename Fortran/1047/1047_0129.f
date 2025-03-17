      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = 9
      ib = -7
      do i=1, loop
         ie(i) = 11*i/3*(-1)**i
      end do
      call sub(ia, ib, ie, loop)
      ic = 9
      id = -7
      do i=1, loop
         ic = max(ie(i)*i*13, ic)
         id = max(i*3*ie(i), id)
      end do

      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do reduction(max:ia) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(MIN) clause is incorrect"
         write(*,*) "     ia=",ia,"  It must be ",ic
         write(*,*) "     ib=",ib,"  It must be ",id
      endif
      stop
      end

      subroutine sub(ia, ib, ie, loop)
      integer*4 ia, ib, ie(50)
      integer*4 loop
!$omp parallel
!$omp do reduction(max:ia,ib)
      do i=1, loop
         ia = max(ie(i)*i*13, ia)
         ib = max(i*3*ie(i), ib)
      end do
!$omp end do
!$omp end parallel
      return
      end
