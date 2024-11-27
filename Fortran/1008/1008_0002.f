c
c
c
!
!
!
      program main
      integer*4 ia(10), ier
      integer*4 :: thread=4, loop=10
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
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
      logical*4   mll,lx
      logical*8   mll8
      common /com1/ mii1,ix,mii2,mii,mii8,mrr,rx,mrr8,mrr16,mcc,
     +              mcc16,mcc32,mss,mll1,mll2,mll,lx,mll8
!
      ia = 0
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
      mll1 = .true.
      mll2 = .true.
      mll = .true.
      mll8 = .true.
!$    thread=OMP_GET_MAX_THREADS()
!
!$omp parallel  private(/com1/)
      mii=OMP_GET_THREAD_NUM()+1
      mii1 = mii*11
      mii2 = mii*11
      mii8 = mii*11
      mrr = mii*11.1
      mrr8 = mii*11.1
      mrr16 = mii*11.1
      mcc = cmplx(mii*1.1,(-1)*mii*0.1)
      mcc16 = cmplx(mii*1.1,(-1)*mii*0.1)
      mcc32 = cmplx(mii*1.1,(-1)*mii*0.1)
      write(mss,'(i4.4)')mii
      mll1 = .false.
      mll2 = .false.
      mll = .false.
      mll8 = .false.
      ia(mii)=mii
!$omp end parallel
!
      ier = 0
      do i=1,thread
         if(ia(i).ne.i) ier=ier+1
      enddo
      do i=thread+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      if (mii1.ne.0) ier=ier+1
      if (mii2.ne.0) ier=ier+1
      if (mii.ne.0) ier=ier+1
      if (mii8.ne.0) ier=ier+1
      if (mrr.ne.0.0) ier=ier+1
      if (mrr8.ne.0.0) ier=ier+1
      if (mrr16.ne.0.0) ier=ier+1
      if (mcc.ne.(0.0,0.0)) ier=ier+1
      if (mcc16.ne.(0.0,0.0)) ier=ier+1
      if (mcc32.ne.(0.0,0.0)) ier=ier+1
      if (mss.ne.'str') ier=ier+1
      if (.not.mll1) ier=ier+1
      if (.not.mll2) ier=ier+1
      if (.not.mll) ier=ier+1
      if (.not.mll8) ier=ier+1
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(/com1/) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG!  PRIVATE clause is not active!"
         write(*,*)"     mii1=",mii1," mii2=",mii2," mii=",mii
         write(*,*)"     mii8=",mii8," mrr=",mrr," mrr8=",mrr8
         write(*,*)"     mrr16=",mrr16," mcc=",mcc," mcc16=",mcc16
         write(*,*)"     mcc32=",mcc32," mss=",mss," mll1=",mll1
         write(*,*)"     mll2=",mll2," mll=",mll," mll8=",mll8
         write(*,*)"     ia=",ia
      endif
      stop
      end
