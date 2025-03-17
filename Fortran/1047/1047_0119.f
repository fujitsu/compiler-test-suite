      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = -1
      ib = 3
      do i=1, loop
         ie(i) = (mod(13*i,5)+1)*(-1)**mod(i,2)
      end do
!$omp parallel
!$omp do reduction(*:ia,ib)
      do i=1, loop, 3
          call sub(ia, ib, ie, i)
      end do
!$omp end do
!$omp end parallel
      ic = -1
      id = 3
      do i=1, loop, 3
         ic = ic * (mod(i,5)+1)
         id = id * ie(i)
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do reduction(*:ia,ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG REDUCTION(*) clause is incorrect"
         write(*,*) "     ia=",ia,"  It must be ",ic
         write(*,*) "     ib=",ib,"  It must be ",id
      endif
      stop
      end

      subroutine sub(ia, ib, ie, i)
      integer*4 ia, ib, ie(50), i
      ia = ia * (mod(i,5)+1)
      ib = ib * ie(i)
      return
      end
