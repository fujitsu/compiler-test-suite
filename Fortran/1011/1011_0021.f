      program main
      complex*16 ca, cb, cc, cd, ce(50)
      integer*4 :: loop=50
      ca = cmplx(3.1,-0.94)
      cb = cmplx(-0.37,1.0)
      cc = cmplx(3.1,-0.94)
      cd = cmplx(-0.37,1.0)
      do i=1, loop
         ce(i) = cmplx(13.0*i/3.0*(-1)**i,i*1.004/3.1105)
      end do
!$omp parallel
!$omp do reduction(+:ca,cb)
      do i=1, loop
         ca = ca-i*ce(i)
         cb = cb+cmplx(i*3,i)+ce(i)
      end do
!$omp end do
!$omp end parallel
      do i=1, loop
         cc = cc-i*ce(i)
         cd = cd+cmplx(i*3,i)+ce(i)
      end do

      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do reduction(+:ca,cb) -----"
      if(abs(ca-cc).le.abs(cc)*1e-10 .and.
     +   abs(cb-cd).le.abs(cd)*1e-10) then
         write(*,*) "OK"
      else
         write(*,*) "NG  REDUCTION(+) clause is incorrect"
         write(*,*) "     ca=",ca
         write(*,*) "     cc=",cc
         write(*,*) "     cb=",cb
         write(*,*) "     cd=",cd
      endif
      stop
      end

