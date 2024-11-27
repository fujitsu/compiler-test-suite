c
c
c
c
c
c
      program main
      integer*4 ib(50), ith, ier
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4   mii1, mia1(50)
      integer*4   mii2, mia2(50)
      integer*4   mii, mia(50)
      integer*4   mii8, mia8(50)
      real*4      mrr,rx, mra(50)
      real*8      mrr8, mra8(50)
      real*16     mrr16, mra16(50)
      complex*8   mcc, mca(50)
      complex*16   mcc16, mca16(50)
      complex*32   mcc32, mca32(50)
      character*4 mss, msa(50)
      logical*1   mll1,lx,mla1(50),lax(50)
      logical*2   mll2,mla2(50)
      logical*4   mll,ly,mla(50)
      logical*8   mll8,mla8(50)
      common /com1/ mii1,mii2,mii,mii8,mrr,rx,mrr8,mrr16,mcc,mcc16,
     +              mcc32,mss,mll1,lx,mll2,mll,ly,mll8
      common /com2/ mia1,mia2,mia,mia8,mra,mra8,mra16,mca,mca16,mca32,
     +              msa,mla1,lax,mla2,mla,mla8
c
      ib = 0
      mii1 = 7
      mii2 = 7
      mii = 7
      mii8 = 7
      mrr = 5.1
      mrr8 = 5.1
      mrr16 = 5.1
      mcc = (1.2,9.1)
      mcc16 = (1.2,9.1)
      mcc32 = (1.2,9.1)
      mss = 'str'
      mll1 = .true.
      mll2 = .true.
      mll = .true.
      mll8 = .true.
      do i=1, loop
         mia1(i)=0
         mia2(i)=0
         mia(i)=0
         mia8(i)=0
         mra(i)=0.0
         mra8(i)=0.0
         mra16(i)=0.0
         mca(i)=(0.,0.)
         mca16(i)=(0.,0.)
         mca32(i)=(0.,0.)
         msa(i)=' '
         mla1(i) = .false.
         mla2(i) = .false.
         mla(i) = .false.
         mla8(i) = .false.
      enddo
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel firstprivate(/com1/) private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      mia1(ith)=mii1
      mia2(ith)=mii2
      mia(ith)=mii
      mia8(ith)=mii8
      mra(ith)=mrr
      mra8(ith)=mrr8
      mra16(ith)=mrr16
      mca(ith)=mcc
      mca16(ith)=mcc16
      mca32(ith)=mcc32
      msa(ith)=mss
      mla1(ith)=mll1
      mla2(ith)=mll2
      mla(ith)=mll
      mla8(ith)=mll8
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
      mss = ' '
      mll1 = .false.
      mll2 = .false.
      mll = .false.
      mll8 = .false.
      ib(ith)=ith
!$omp end parallel
c
      ier = 0
      do i=1,thread
         if(mia1(i).ne.mii1) ier=ier+1
         if(mia2(i).ne.mii2) ier=ier+1
         if(mia(i).ne.mii) ier=ier+1
         if(mia8(i).ne.mii8) ier=ier+1
         if(mra(i).ne.mrr) ier=ier+1
         if(mra8(i).ne.mrr8) ier=ier+1
         if(mra16(i).ne.mrr16) ier=ier+1
         if(mca(i).ne.mcc) ier=ier+1
         if(mca16(i).ne.mcc16) ier=ier+1
         if(mca32(i).ne.mcc32) ier=ier+1
         if(msa(i).ne.mss) ier=ier+1
         if(mla1(i).neqv..true.) ier=ier+1
         if(mla2(i).neqv..true.) ier=ier+1
         if(mla(i).neqv..true.) ier=ier+1
         if(mla8(i).neqv..true.) ier=ier+1
         if(ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
         if(mia1(i).ne.0) ier=ier+1
         if(mia2(i).ne.0) ier=ier+1
         if(mia(i).ne.0) ier=ier+1
         if(mia8(i).ne.0) ier=ier+1
         if(mra(i).ne.0.0) ier=ier+1
         if(mra8(i).ne.0.0) ier=ier+1
         if(mra16(i).ne.0.0) ier=ier+1
         if(mca(i).ne.(0.,0.)) ier=ier+1
         if(mca16(i).ne.(0.,0.)) ier=ier+1
         if(mca16(i).ne.(0.,0.)) ier=ier+1
         if(msa(i).ne.' ') ier=ier+1
         if(mla1(i).neqv..false.) ier=ier+1
         if(mla2(i).neqv..false.) ier=ier+1
         if(mla(i).neqv..false.) ier=ier+1
         if(mla8(i).neqv..false.) ier=ier+1
         if(ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel firstprivate(/com1/)",
     +                " private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         do i=1, loop
            write(*,*)"i=",i," mia1(i)=",mia1(i)," mia2(i)=",mia2(i)
            write(*,*)" mia(i)=",mia(i)," mia8(i)=",mia8(i)
            write(*,*)" mra(i)=",mra(i)," mra8(i)=",mra8(i)
            write(*,*)" mra16(i)=",mra16(i)
            write(*,*)" mca(i)=",mca(i)," mca16(i)=",mca16(i)
            write(*,*)" mca32(i)=",mca32(i)," msa(i)=",msa(i)
            write(*,*)" mla1(i)=",mla1(i)," mla2(i)=",mla2(i)
            write(*,*)" mla(i)=",mla(i)," mla8(i)=",mla8(i)
         enddo
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/", mii1,mii2,mii,mii8, mrr,mrr8,mrr16,
     +                             mcc,mcc16,mcc32,mss,mll1,mll2,mll,
     +                             mll8
         write(*,*) "     ib=",ib
      endif
      stop
      end

