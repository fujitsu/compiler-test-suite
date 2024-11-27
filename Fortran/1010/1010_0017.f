!
!
!
!
!
!
      program main
      integer*4 ier
      complex*8 cb(50)
      character*4 ss
      integer*4 :: loop=50
      integer*4   mii
      real*4      mrr
      complex*8   mcc
      character*4 mss
      common /com1/ mii, mrr, mcc, mss
!
      cb = (0,0)
      mii = 7
      mrr = 3.5
      mcc = (1.9,8.1)
      mss = 'str'
!
!$omp parallel
!$omp do lastprivate(/com1/)
      do j=1, loop
         mii = j
         mrr = j
         mcc = cmplx(j,j)
         write(mss,'(i4.4)')j
         cb(j) = cmplx(real(mii),mrr) + mcc
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
         if (cb(j).ne.cmplx(j*2,j*2)) then
            ier=ier+1
            write(*,*) "E  j=",j," cb(j)=",cb(j)," must be ",j*2.0
         endif
      enddo
      if(mii.ne.loop)ier=ier+1
      if(mrr.ne.loop)ier=ier+1
      if(mcc.ne.cmplx(loop,loop))ier=ier+1
      write(ss,'(i4.4)')loop
      if(mss.ne.ss) ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/ ", mii, mrr, mcc, mss
      endif
      stop
      end
