      program main
      integer*4 ib, ic, id(50), ig, ih
      integer*4 :: loop=50
      ib = 1
      ic = 3
      do i=1,loop
          id(i) = mod(2*i+i*13*(-1)**i,3)
          if (id(i).ge.0) id(i)=id(i)+1
      enddo
      ib = 99
      ic = 4
!$omp parallel
!$omp do reduction(max:ib)
      do i=1, loop
         ib = max(ib,id(i)*i)
      end do
!$omp end do
!$omp do reduction(*:ic)
      do i=1, loop, 7
         ic = ic*id(i)
      end do
!$omp end do
!$omp end parallel
      ig = 99
      do i=1, loop
         ig = max(ig,id(i)*i)
      end do
      ih = 4
      do i=1, loop, 7
         ih = ih*id(i)
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do reduction(max:ib)"
      write(*,*) "      do reduction(*:ic) -----"
      if(ib.eq.ig .and. ic.eq.ih) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION clause is not active"
         write(*,*) "     ib=", ib, " ic=", ic
         write(*,*) "     ig=", ig, " ih=", ih
      endif
      stop
      end
