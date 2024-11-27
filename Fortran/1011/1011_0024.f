      program main
      complex*8 ca(150), cb1, cb2
      integer*4 :: loop=150
      cb1=(0.3,2.1)
      cb2=(0.3,2.1)
      do i=1,loop
         ca(i)=cmplx(17.3*i/9.1*(-1)**i,i*0.06)
      enddo
!$omp parallel
!$omp do firstprivate(ca) reduction(+:cb1)
      do i=1,loop
         cb1 = cb1 + ca(i)*i/11.4
         ca(i) = cb1
      enddo
!$omp end do
!$omp end parallel
      do i=1,loop
         cb2 = cb2 + ca(i)*i/11.4
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ca) reduction(+:cb1) -----"
      if(abs(cb1-cb2).le.abs(cb2)*1e-4) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE + REDUCTION is incorrect"
         write(*,*) "       cb1=", cb1, " cb2=", cb2
      endif
      stop
      end
