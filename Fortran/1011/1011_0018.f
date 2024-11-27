      program main
      complex*16 ca, cb(50)
      integer*4 ier
      integer*4 :: loop=50
      ca = (0.0,0.0)
      cb = (0.0,0.0)
!$omp parallel
!$omp do lastprivate(ca)
      do i=1,loop
          ca = dcmplx(i,i)
          cb(i) = ca
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
          if (cb(i).ne.dcmplx(i,i)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ca) -----"
      if(ier.eq.0 .and. ca.eq.dcmplx(loop,loop)) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ca=",ca,"  It must be ",cmplx(loop,loop)
         write(*,*) "     ier=",ier
         write(*,*) "     cb=",cb
      end if
      stop
      end

