      program main
      complex*8 ca, cb(50), cc
      integer*4 ier
      integer*4 :: loop=50
      cc = (9.9,9.9)
      ca = cc
      cb = (0.0,1.0)
!$omp parallel
!$omp do private(ca)
      do j=1, loop
          ca = cmplx(j,j*10)
          cb(j) = ca
      end do
!$omp end do
      if(ca.ne.cc)then
!$omp atomic
          ier=ier+1
      endif
!$omp end parallel
      ier = 0
      do j=1, loop
          if (cb(j).ne.cmplx(j,j*10)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ca) ------"
      if(ca.eq.cc .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     cb=",cb
         write(*,*) "     ca=",ca
         write(*,*) "     cc=",cc
      endif
      stop
      end
