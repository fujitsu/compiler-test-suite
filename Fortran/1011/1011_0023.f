      program main
      complex*16 ca, cb, cc, cd, ce(10)
      integer*4 :: loop=10
      ca = (-1.13,0.95)
      cb = (0.89,-1.04)
      cc = (-1.13,0.95)
      cd = (0.89,-1.04)
      do i=1, loop
         ce(i) = cmplx(1.01*i,0.97*i)
      end do
!$omp parallel
!$omp do reduction(*:ca,cb)
      do i=1, loop
         ca = ca * (cmplx(i,i*0.76)+ce(i))
         cb = cb * ce(i)/i
      end do
!$omp end do
!$omp end parallel
      do i=1, loop
         cc = cc * (cmplx(i,i*0.76)+ce(i))
         cd = cd * ce(i)/i
      end do
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do reduction(*:ca,cb) -----"
      if(abs(ca-cc).le.abs(cc)*1e-4 .and.
     +   abs(cb-cd).le.abs(cd)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG REDUCTION(*) clause is incorrect"
         write(*,*) "     ca=",ca
         write(*,*) "     cc=",cc
         write(*,*) "     cb=",cb
         write(*,*) "     cd=",cd
      endif
      stop
      end

