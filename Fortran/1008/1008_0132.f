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
      integer*1   iia1(50)
      integer*2   iia2(50)
      integer*4   iia(50)
      integer*8   iia8(50)
      real*4      rra(50)
      real*8      rra8(50)
      real*16     rra16(50)
      complex*8   cca(50)
      complex*16  cca16(50)
      complex*32  cca32(50)
      character*4 ssa(50)
      logical*1   lla1(50)
      logical*2   lla2(50)
      logical*4   lla(50)
      logical*8   lla8(50)
      integer*1   mii1,ix
      integer*2   mii2
      integer*4   mii
      integer*8   mii8
      real*4      mrr,mrrtmp
      real*8      mrr8
      real*16     mrr16
      complex*8   mcc
      complex*16  mcc16
      complex*32  mcc32
      character*4 mss
      logical*1   mll1,lx
      logical*2   mll2
      logical*4   mll,lq
      logical*8   mll8
      common /com1/ mii1,ix,mii2,mii,mii8,mrr,mrrtmp,mrr8,mrr16,mcc,
     -              mcc16,mcc32,mss,mll1,lx,mll2,mll,lq,mll8
!$omp threadprivate(/com1/)
c
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
c
      do i=1,loop
         iia1(i)=0
         iia2(i)=0
         iia(i)=0
         iia8(i)=0
         rra(i)=0.
         rra8(i)=0.
         rra16(i)=0.
         cca(i)=(0.,0.)
         cca16(i)=(0.,0.)
         cca32(i)=(0.,0.)
         ssa(i)=' '
         lla1(i)= .false.
         lla2(i)= .false.
         lla(i)= .false.
         lla8(i)= .false.
      enddo
      mii1=99
      mii2=99
      mii=99
      mii8=99
      mrr=99.
      mrr8=99.
      mrr16=99.
      mcc=(99.,99.)
      mcc16=(99.,99.)
      mcc32=(99.,99.)
      mss='99'
      mll1=.false.
      mll2=.false.
      mll=.false.
      mll8=.false.
!$omp parallel private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      iia1(ith)=mii1
      iia2(ith)=mii2
      iia(ith)=mii
      iia8(ith)=mii8
      rra(ith)=mrr
      rra8(ith)=mrr8
      rra16(ith)=mrr16
      cca(ith)=mcc
      cca16(ith)=mcc16
      cca32(ith)=mcc32
      ssa(ith)=mss
      lla1(ith)=mll1
      lla2(ith)=mll2
      lla(ith)=mll
      lla8(ith)=mll8
      mii1 = ith
      mii2 = ith
      mii = ith
      mii8= ith
      mrr = ith
      mrr8 = ith
      mrr16 = ith
      mcc = cmplx(ith,ith)
      mcc16 = cmplx(ith,ith)
      mcc32 = cmplx(ith,ith)
      write(mss,'(i4.4)') ith
      mll1 = .true. 
      mll2 = .true. 
      mll = .true. 
      mll8 = .true. 
      ib(ith)=ith
!$omp end parallel
c
      ier = 0
      if(iia1(1).ne.99) ier=ier+1
      if(iia2(1).ne.99) ier=ier+1
      if(iia(1).ne.99) ier=ier+1
      if(iia8(1).ne.99) ier=ier+1
      if(rra(1).ne.99.) ier=ier+1
      if(rra8(1).ne.99.) ier=ier+1
      if(rra16(1).ne.99.) ier=ier+1
      if(cca(1).ne.(99.,99.)) ier=ier+1
      if(cca16(1).ne.(99.,99.)) ier=ier+1
      if(cca32(1).ne.(99.,99.)) ier=ier+1
      if(ssa(1).ne.'99') ier=ier+1
      if(lla1(1).neqv..false.) ier=ier+1
      if(lla2(1).neqv..false.) ier=ier+1
      if(lla(1).neqv..false.) ier=ier+1
      if(lla8(1).neqv..false.) ier=ier+1
      if(ib(1).ne.1) ier=ier+1
      do i=2,thread
         if(iia1(i).ne.55) ier=ier+1
         if(iia2(i).ne.55) ier=ier+1
         if(iia(i).ne.55) ier=ier+1
         if(iia8(i).ne.55) ier=ier+1
         if(rra(i).ne.55.) ier=ier+1
         if(rra8(i).ne.55.) ier=ier+1
         if(rra16(i).ne.55.) ier=ier+1
         if(cca(i).ne.(55.,55.)) ier=ier+1
         if(cca16(i).ne.(55.,55.)) ier=ier+1
         if(cca32(i).ne.(55.,55.)) ier=ier+1
         if(ssa(i).ne.'str') ier=ier+1
         if(lla1(i).neqv..true.) ier=ier+1
         if(lla2(i).neqv..true.) ier=ier+1
         if(lla(i).neqv..true.) ier=ier+1
         if(lla8(i).neqv..true.) ier=ier+1
         if(ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
         if(iia1(i).ne.0) ier=ier+1
         if(iia2(i).ne.0) ier=ier+1
         if(iia(i).ne.0) ier=ier+1
         if(iia8(i).ne.0) ier=ier+1
         if(rra(i).ne.0.) ier=ier+1
         if(rra8(i).ne.0.) ier=ier+1
         if(rra16(i).ne.0.) ier=ier+1
         if(cca(i).ne.(0.,0.)) ier=ier+1
         if(cca16(i).ne.(0.,0.)) ier=ier+1
         if(cca32(i).ne.(0.,0.)) ier=ier+1
         if(ssa(i).ne.' ') ier=ier+1
         if(lla1(i).neqv..false.) ier=ier+1
         if(lla2(i).neqv..false.) ier=ier+1
         if(lla(i).neqv..false.) ier=ier+1
         if(lla8(i).neqv..false.) ier=ier+1
         if(ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  THREADPRIVATE clause is not active!"
         do i=1, loop
            write(*,*)"i=",i," iia1(i)=",iia1(i)," iia2(i)=",iia2(i)
            write(*,*)"      iia(i)=",cca(i)," iia8(i)=",iia8(i)
            write(*,*)"      rra(i)=",rra(i),"rra8(i)=",rra8(i)
            write(*,*)"      cca(i)=",cca(i),"cca16(i)=",cca16(i)
            write(*,*)"      cca32(i)=",cca32(i),"ssa(i)=",ssa(i)
            write(*,*)"      lla1(i)=",lla1(i),"lla2(i)=",lla2(i)
            write(*,*)"      lla(i)=",lla(i),"lla8(i)=",lla8(i)
         enddo
         write(*,*) "     ier=",ier
         write(*,*) "    /com1/",mii1,mii2,mii,mii8,mrr,mrr8,mrr16 
         write(*,*) "          ",mcc,mcc16,mcc32,mss,mll1,mll2,mll,mll8
         write(*,*) "     ib=",ib
      endif
c
      stop
      end

      blockdata
         integer*1   mii1,ix
         integer*2   mii2
         integer*4   mii
         integer*8   mii8
         real*4      mrr,mrrtmp
         real*8      mrr8
         real*16     mrr16
         complex*8   mcc
         complex*16  mcc16
         complex*32  mcc32
         logical*1   mll1,lx
         logical*2   mll2
         logical*4   mll,lq
         logical*8   mll8
         character*4 mss
         common /com1/ mii1,ix,mii2,mii,mii8,mrr,mrrtmp,mrr8,mrr16,mcc,
     -                 mcc16,mcc32,mss,mll1,lx,mll2,mll,lq,mll8
!$omp threadprivate(/com1/)
         data mii1 / 55 /
         data mii2 / 55 /
         data mii / 55 /
         data mii8 / 55 /
         data mrr / 55./
         data mrr8 / 55./
         data mrr16 / 55./
         data mcc / (55.,55.) /
         data mcc16 / (55.,55.) /
         data mcc32 / (55.,55.) /
         data mss / 'str' /
         data mll1 /.true./
         data mll2 /.true./
         data mll /.true./
         data mll8 /.true./
      end
