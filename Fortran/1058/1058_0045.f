      program main
      real*8 ib, ic, id(50), ig, ih
      integer*4 :: loop=50

      ib = 1
      ic = 3
      do i=1,loop
          id(i) = mod(2.5*i+i*1.3*(-1)**i,3.3)
          if (id(i).ge.0) id(i)=id(i)+1.9
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
         ic = ic*(id(i)+i)
      end do
!$omp end do
!$omp end parallel

      ig = 99
      do i=1, loop
         ig = max(ig,id(i)*i)
      end do
      ih = 4
      do i=1, loop, 7
         ih = ih*(id(i)+i)
      end do
      write(*,*) "----- parallel"
      write(*,*) "      do reduction(max:ib)"
      write(*,*) "      do reduction(*:ic) -----"
      if(abs(ib-ig).le.abs(ig)*1e-10 .and.
     +   abs(ic-ih).le.abs(ih)*1e-10) then
         write(*,*) "OK"
      else
         write(*,*) "NG   REDUCTION clause is not active"
         write(*,*) "     ib=", ib, " ic=", ic
         write(*,*) "     ig=", ig, " ih=", ih
      endif

      stop
      end
