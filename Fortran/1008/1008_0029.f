!
!
!
!
!
      program main
      integer*4 ic1,ic2,ic3,ic4,total, ier
      complex*8 cb1(50),cb2(50),cb3(50),cb4(50)
      complex*32 cc
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
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
      character*4 mss
      logical*1   mll1,lx
      logical*2   mll2
      logical*4   mll,ly
      logical*8   mll8
      common /com1/ mii1,ix,mii2,mii,mii8,mrr,rx,mrr8,mrr16, mcc,mcc16,
     +              mcc32, mss,mll1,lx,mll2,mll,ly,mll8
!
!$    thread = OMP_GET_MAX_THREADS()
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
      mll1 = .true.
      mll2 = .true.
      mll = .true.
      mll8 = .true.
!
!$omp parallel
!$omp do firstprivate(/com1/)
      do j=1, loop
         cb1(j) = cmplx(real(mii1),mrr) + mcc
         cb2(j) = cmplx(real(mii2),mrr) + mcc
         cb3(j) = cmplx(real(mii),mrr8) + mcc16
         cb4(j) = cmplx(real(mii8),mrr16) + mcc32
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
         mll1 = .false.
         mll2 = .false.
         mll = .false.
         mll8 = .false.
      end do
!$omp end do
!$omp end parallel
!
      ic1 = 0
      ic2 = 0
      ic3 = 0
      ic4 = 0
      ier = 0
      do j=1, loop
         cc = cmplx(real(mii),mrr) + mcc
         if (cb1(j).ne.cmplx((j-1)*2,(j-1)*2)) then
            if (cb1(j).eq.cc) then
               ic1=ic1+1
            else
               ier=ier+1
               write(*,*) "E  j=",j," cb1(j)=",cb1(j)," must be ",j*2.0
            endif
         endif
         if (cb2(j).ne.cmplx((j-1)*2,(j-1)*2)) then
            if (cb2(j).eq.cc) then
               ic2=ic2+1
            else
               ier=ier+1
               write(*,*) "E  j=",j," cb2(j)=",cb2(j)," must be ",j*2.0
            endif
         endif
         if (cb3(j).ne.cmplx((j-1)*2,(j-1)*2)) then
            if (cb3(j).eq.cc) then
               ic3=ic3+1
            else
               ier=ier+1
               write(*,*) "E  j=",j," cb3(j)=",cb3(j)," must be ",j*2.0
            endif
         endif
         if (cb4(j).ne.cmplx((j-1)*2,(j-1)*2)) then
            if (cb4(j).eq.cc) then
               ic4=ic4+1
            else
               ier=ier+1
               write(*,*) "E  j=",j," cb4(j)=",cb4(j)," must be ",j*2.0
            endif
         endif
      enddo
c
      total=ic1+ic2+ic3+ic4
      if(total .gt. thread*4) then
         ier=ier+1
      endif
      if(mss.ne.'str') ier=ier+1
      if(.not.mll1) ier=ier+1
      if(.not.mll2) ier=ier+1
      if(.not.mll) ier=ier+1
      if(.not.mll8) ier=ier+1
      write(*,*) "----- TEST --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
      endif
      stop
      end
