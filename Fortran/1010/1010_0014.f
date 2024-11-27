!
!
!
!
!
!
      program main
      integer*4 ier
      complex*8 cb(50), cc
      character*4 ss
      integer*4 :: loop=50
      integer*4   mii(50)
      real*4      mrr(50)
      complex*8   mcc(50)
      character*4 mss(50)
      common /com1/ mii, mrr, mcc, mss
!
      cb = (0,0)
      do i=1,loop
         mii(i) = i
         mrr(i) = (-1)*i
         mcc(i) = cmplx(i,(-1)*i)
         write(mss(i),'(i4.4)')i
      enddo
!
!$omp parallel
!$omp do firstprivate(/com1/)
      do i=1, loop
         cb(i) = cmplx(real(mii(i)),mrr(i)) + mcc(i)
         mii(i) = i*10
         mrr(i) = i*10
         mcc(i) = cmplx(i*10,i*(-10))
         write(mss(i),'(i4.4)')i*10
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do i=1, loop
         cc = cmplx(real(mii(i)),mrr(i)) + mcc(i)
         if (cb(i).ne.cc) then
            ier=ier+1
            write(*,*) "E  i=",i," cb(i)=",cb(i)," must be ",cc
         endif
      enddo
      do i=1,loop
         write(ss,'(i4.4)')i
         if(mss(i).ne.ss)then
            ier=ier+1
            write(*,*) "E  i=",i," mss(i)=",mss(i)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
      endif
      stop
      end
