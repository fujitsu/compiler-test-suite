!
!
!
!
!
      program main
      integer*4 ier
      complex*32 cb1(50),cb2(50),cb3(50),cb4(50)
      character*4 ss
      integer*4 :: loop=50
      integer*1   mii1,ix
      integer*2   mii2
      integer*4   mii
      integer*8   mii8
      real*4      mrr,rx
      real*8      mrr8
      real*16     mrr16
      complex*8   mcc
      complex*16  mcc16
      complex*32  mcc32
      character*4 mss
      logical*1   mll1,lx
      logical*2   mll2
      logical*4   mll,ly
      logical*8   mll8
      common /com1/ mii1,ix,mii2,mii,mii8, mrr,rx,mrr8,mrr16,mcc,mcc16,
     +              mcc32, mss,mll1,lx,mll2,mll,ly,mll8
!
      cb1 = (0,0)
      cb2 = (0,0)
      cb3 = (0,0)
      cb4 = (0,0)
      mii1 = 7
      mii2 = 7
      mii = 7
      mii8 = 7
      mrr = 3.5
      mrr8 = 3.5
      mrr16 = 3.5
      mcc = (1.9,8.1)
      mcc16 = (1.9,8.1)
      mcc32 = (1.9,8.1)
      mss = 'str'
      mll1 = .false.
      mll2 = .false.
      mll = .false.
      mll8 = .false.
!
!$omp parallel
!$omp do lastprivate(/com1/)
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
         write(mss,'(i4.4)')j
         mll1 = .true.
         mll2 = .true.
         mll = .true.
         mll8 = .true.
         cb1(j) = cmplx(real(mii1),mrr) + mcc
         cb2(j) = cmplx(real(mii2),mrr) + mcc
         cb3(j) = cmplx(real(mii),mrr8) + mcc16
         cb4(j) = cmplx(real(mii2),mrr16) + mcc32
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
      if(mii1.ne.loop)ier=ier+1
      if(mii2.ne.loop)ier=ier+1
      if(mii.ne.loop)ier=ier+1
      if(mii8.ne.loop)ier=ier+1
      if(mrr.ne.loop)ier=ier+1
      if(mrr8.ne.loop)ier=ier+1
      if(mrr16.ne.loop)ier=ier+1
      if(mcc.ne.cmplx(loop,loop))ier=ier+1
      if(mcc16.ne.cmplx(loop,loop))ier=ier+1
      if(mcc32.ne.cmplx(loop,loop))ier=ier+1
      write(ss,'(i4.4)')loop
      if(mss.ne.ss) ier=ier+1
      if(.not.mll1) ier=ier+1
      if(.not.mll2) ier=ier+1
      if(.not.mll) ier=ier+1
      if(.not.mll8) ier=ier+1
      write(*,*) "----- TEST --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  LASTPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/ ", mii1,mii2,mii,mii8,mrr,mrr8,mrr16,
     +                           mcc,mcc16,mcc32, mss,mll1,mll2,mll,mll8
      endif
      stop
      end
