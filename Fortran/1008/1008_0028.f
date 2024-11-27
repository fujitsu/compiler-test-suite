!
!
!
!
!
      program main
      integer*4 ier
      complex*32 cb1(50),cb2(50),cb3(50),cb4(50)
      integer*4 :: loop=50
      integer*1   mii1,ix
      integer*2   mii2
      integer*4   mii
      integer*8   mii8
      real*4      mrr,rx
      real*8      mrr8
      real*16     mrr16
      complex*8   mcc
      complex*16   mcc16
      complex*32   mcc32
      character*5 mss
      logical*1   mll1
      logical*2   mll2
      logical*4   mll,ly
      logical*8   mll8
      common /com1/ mii1,ix,mii2,mii,mii8, mrr,rx,mrr8,mrr16, mcc,
     +              mcc16,mcc32,mss,mll1,mll2,mll,ly,mll8
!
      cb1 = (0,0)
      cb2 = (0,0)
      cb3 = (0,0)
      cb4 = (0,0)
      mii1 = 0
      mii2 = 0
      mii = 0
      mii8 = 0
      mrr = 0.0
      mrr8 = 0.0
      mrr16 = 0.0
      mcc = (0.0,0.0)
      mcc16 = (0.0,0.0)
      mcc32 = (0.0,0.0)
      mss = 'str'
      mll1 = .false.
      mll2 = .false.
      mll = .false.
      mll8 = .false.
!
!$omp parallel
!$omp do private(/com1/)
      do j=1, loop
         mii1 = j
         mii2 = j
         mii = j
         mii8 = j
         mrr = j
         mrr8 = j
         mrr16 = j
         mcc = cmplx(j,j)
         mcc16 = cmplx(j,j)
         mcc32 = cmplx(j,j)
         cb1(mii1) = cmplx(real(mii1),mrr) + mcc
         cb2(mii2) = cmplx(real(mii2),mrr) + mcc
         cb3(mii) = cmplx(real(mii),mrr8) + mcc16
         cb4(mii8) = cmplx(real(mii8),mrr16) + mcc32
         write(mss,'(i4.4)')j
         mll1 = .true.
         mll2 = .true.
         mll = .true.
         mll8 = .true.
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
          if (cb1(j).ne.cmplx(j*2,j*2)) then
             ier=ier+1
             write(*,*) "E  j=",j," cb1(j)=",cb1(j)," must be ",j*2.0
          endif
          if (cb2(j).ne.cmplx(j*2,j*2)) then
             ier=ier+1
             write(*,*) "E  j=",j," cb2(j)=",cb2(j)," must be ",j*2.0
          endif
          if (cb3(j).ne.cmplx(j*2,j*2)) then
             ier=ier+1
             write(*,*) "E  j=",j," cb3(j)=",cb3(j)," must be ",j*2.0
          endif
          if (cb4(j).ne.cmplx(j*2,j*2)) then
             ier=ier+1
             write(*,*) "E  j=",j," cb4(j)=",cb4(j)," must be ",j*2.0
          endif
      enddo
      if(mii1.ne.0) ier=ier+1
      if(mii2.ne.0) ier=ier+1
      if(mii.ne.0) ier=ier+1
      if(mii8.ne.0) ier=ier+1
      if(mrr.ne.0.0) ier=ier+1
      if(mrr8.ne.0.0) ier=ier+1
      if(mrr16.ne.0.0) ier=ier+1
      if(mcc.ne.(0.0,0.0)) ier=ier+1
      if(mcc16.ne.(0.0,0.0)) ier=ier+1
      if(mcc32.ne.(0.0,0.0)) ier=ier+1
      if(mss.ne.'str') ier=ier+1
      if(mll1) ier=ier+1
      if(mll2) ier=ier+1
      if(mll) ier=ier+1
      if(mll8) ier=ier+1
      write(*,*) "----- TEST --"
      write(*,*) "      parallel"
      write(*,*) "      do private(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/ ", mii, mrr, mcc, mss
      endif
      stop
      end
