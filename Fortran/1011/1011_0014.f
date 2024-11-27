      program main
      complex*16 ca, cb(50), cc(50)
      integer*4 ier
      integer*4 :: loop=50
      ca = (3.7,0.9)
      cb = (0.0,0.0)
      cc = (0.0,0.0)
!$omp parallel
!$omp do firstprivate(ca)
      do i=1, loop
          cb(i) = ca * i
      end do
!$omp end do
!$omp end parallel
      do i=1, loop
          cc(i) = ca * i
      end do
      ier = 0
      do i=1,loop
          if (cb(i).ne.cc(i)) then
              ier=ier+1
              write(*,*) "i=",i,"  cb(i)=",cb(i),"  cc(i)=",cc(i)
          end if
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ca) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     cb=",cb
         write(*,*) "     cc=",cc
         write(*,*) "     ier=",ier
      endif
      stop
      end

