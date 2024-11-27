      program main
      complex*8 ca, cb(50), cc(50)
      integer*4 ier
      integer*4 :: loop=50
      ca = cmplx(5,0)
      do i=1,loop
          cb(i) = cmplx(i*(i/1.03)*(-1)**i,i*0.94)
      enddo
!$omp parallel
!$omp do firstprivate(cb) lastprivate(ca)
      do i=1,loop
          ca = cmplx(i,i)
          cc(i) = cb(i) + ca
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
          if (cc(i).ne.cb(i)+cmplx(i,i)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ca) -----"
      if(ier.eq.0 .and. ca.eq.cmplx(loop,loop)) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ca=",ca,"  It must be ",cmplx(loop,loop)
         write(*,*) "     ier=",ier
         write(*,*) "     cc=",cc
      end if
      stop
      end

