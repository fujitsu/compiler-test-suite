      program main
      integer*4 ia, ib, ic, id, ie(50)
      integer*4 :: loop=50
      ia = -1
      ib = 3
      do i=1, loop
         ie(i) = mod(1+13*i/11+i*(-1)**i,7)
         if ( ie(i).ge.0 ) ie(i)=ie(i)+1
      end do
!$omp parallel private(i)
!$omp sections reduction(*:ia,ib)
      do i=1, loop, 3
         ia = ia * (mod(i,5)+1)
         ib = ib * ie(i)
      end do
!$omp section
      do i=1, loop, 4
         ia = ia * (i+ie(i))
      end do
!$omp section
      do i=1, loop, 4
         ib = ib * (mod(i,7)+1)
      end do
!$omp end sections
!$omp end parallel
      ic = -1
      id = 3
      do i=1, loop, 3
         ic = ic * (mod(i,5)+1)
         id = id * ie(i)
      end do
      do i=1, loop, 4
         ic = ic * (i+ie(i))
         id = id * (mod(i,7)+1)
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel sections  reduction(*:ia,ib) -----"
      if(ia.eq.ic .and. ib.eq.id) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SECTIONS REDUCTION clause is incorrect"
         write(6,*) "     ia=", ia, "  It must be ",ic
         write(6,*) "     ib=", ib, "  It must be ",id
      endif
      stop
      end

