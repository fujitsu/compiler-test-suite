c
c
c
c
c
      program main
      integer*4 ia(10), ith, ier
      integer*4 :: thread=4, loop=10
      character*4 ss
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*1   mii1(10)
      integer*2   mii2(10),ix
      integer*4   mii(10)
      integer*8   mii8(10)
      real*4      mrr(10)
      real*8      mrr8(10)
      real*16     mrr16(10)
      complex*8   mcc(10)
      complex*16  mcc16(10)
      complex*32  mcc32(10)
      character*4 mss(10)
      logical*1   mll1(10)
      logical*2   mll2(10),lx
      logical*4   mll(10)
      logical*8   mll8(10)
      common /com1/ mii1,mii2,ix,mii,mii8,mrr,mrr8,mrr16,
     +              mcc,mcc16,mcc32, mss,mll1,mll2,lx,mll,mll8
c
      ia = 0
      do i=1,loop
         mii1(i) = i*5
         mii2(i) = i*5
         mii(i) = i*5
         mii8(i) = i*5
         mrr(i) = i*1.5
         mrr8(i) = i*1.5
         mrr16(i) = i*1.5
         mcc(i) = cmplx(i*10.5,i*0.5)
         mcc16(i) = cmplx(i*10.5,i*0.5)
         mcc32(i) = cmplx(i*10.5,i*0.5)
         write(mss(i),'(i4.4)')i*5
         mll1(i) = .true.
         mll2(i) = .true.
         mll(i) = .true.
         mll8(i) = .true.
      enddo
!$    thread=OMP_GET_MAX_THREADS()
c
!$omp parallel  private(/com1/,ith)
!$    ith=OMP_GET_THREAD_NUM()+1
      do i=1,loop
         mii1(i) = i*ith
         mii2(i) = i*ith
         mii(i) = i*ith
         mii8(i) = i*ith
         mrr(i) = i/(ith+1.3)
         mrr8(i) = i/(ith+1.3)
         mrr16(i) = i/(ith+1.3)
         mcc(i) = cmplx(i*10.0,ith*1.0)
         mcc16(i) = cmplx(i*10.0,ith*1.0)
         mcc32(i) = cmplx(i*10.0,ith*1.0)
         write(mss(i),'(i4.4)')i*10+ith
         mll1(i) = .false.
         mll2(i) = .false.
         mll(i) = .false.
         mll8(i) = .false.
      enddo
      ia(ith)=ith
!$omp end parallel
c
      ier = 0
      do i=1,thread
         if(ia(i).ne.i) ier=ier+1
      enddo
      do i=thread+1,loop
         if(ia(i).ne.0) ier=ier+1
      enddo
      do i=1,loop
         if(mii1(i).ne.i*5) ier=ier+1
         if(mii2(i).ne.i*5) ier=ier+1
         if(mii(i).ne.i*5) ier=ier+1
         if(mii8(i).ne.i*5) ier=ier+1
         if(mrr(i).ne.i*1.5) ier=ier+1
         if(mrr8(i).ne.i*1.5) ier=ier+1
         if(mrr16(i).ne.i*1.5) ier=ier+1
         if(mcc(i).ne.cmplx(i*10.5,i*0.5)) ier=ier+1
         if(mcc16(i).ne.cmplx(i*10.5,i*0.5)) ier=ier+1
         if(mcc32(i).ne.cmplx(i*10.5,i*0.5)) ier=ier+1
         write(ss,'(i4.4)')i*5
         if(mss(i).ne.ss) ier=ier+1
         if(.not.mll1(i)) ier=ier+1
         if(.not.mll2(i)) ier=ier+1
         if(.not.mll(i)) ier=ier+1
         if(.not.mll8(i)) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(/com1/,ith) ------"
      if ( ier.eq.0 ) then
         write(*,*)"OK"
      else
         write(*,*)"NG!  PRIVATE clause is not active!"
         do i=1,loop
            write(*,*)"i=",i," mii1(i)=",mii1(i)," mii2(i)=",mii2(i)
            write(*,*)"      mii(i)=",mii(i)," mii8(i)=",mii8(i)
            write(*,*)"      mrr(i)=",mrr(i)," mrr8(i)=",mrr8(i)
            write(*,*)"      mrr16(i)=",mrr16(i)," mcc(i)=",mcc(i)
            write(*,*)"      mcc16(i)=",mcc16(i)," mcc32(i)=",mcc32(i)
            write(*,*)"      mss(i)=",mss(i)," mll1(i)=",mll1(i)
            write(*,*)"      mll2(i)=",mll2(i)," mll(i)=",mll(i)
            write(*,*)"      mll8(i)=",mll8(i)
         enddo
         write(*,*)"     ier=",ier
         write(*,*)"     ia=",ia
      endif
      stop
      end
