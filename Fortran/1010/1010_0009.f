!
!
!
!
!
!
      program main
      integer*4 ier
      complex*8 cb(50)
      integer*4 :: loop=50
      integer*4   mii
      real*4      mrr
      complex*8   mcc
      character*4 mss
      common /com1/ mii, mrr, mcc, mss
!
      cb = (0,0)
      mii = 0
      mrr = 0.0
      mcc = (0.0,0.0)
      mss = 'str'
!
!$omp parallel
!$omp do private(/com1/)
      do j=1, loop
         mii = j
         mrr = j
         mcc = cmplx(j,j)
         cb(mii) = cmplx(real(mii),mrr) + mcc
         write(mss,'(i4.4)')j
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
      if(mii.ne.0) ier=ier+1
      if(mrr.ne.0.0) ier=ier+1
      if(mcc.ne.(0.0,0.0)) ier=ier+1
      if(mss.ne.'str') ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/ ", mii, mrr, mcc, mss
      endif
      stop
      end
