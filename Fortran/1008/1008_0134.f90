!
!
!
!
!
      program main
      integer*4 ib(50),tib(50),ith, ier
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*1   iia1(50),tia1(50)
      integer*2   iia2(50),tia2(50)
      integer*4   iia(50),tia(50)
      integer*8   iia8(50),tia8(50)
      real*4      rra(50),tra(50)
      real*8      rra8(50),tra8(50)
      real*16     rra16(50),tra16(50)
      complex*8   cca(50),tca(50)
      complex*16  cca16(50),tca16(50)
      complex*32  cca32(50),tca32(50)
      character*4 ssa(50),tsa(50)
      logical*1   lla1(50),tla1(50)
      logical*2   lla2(50),tla2(50)
      logical*4   lla(50),tla(50)
      logical*8   lla8(50),tla8(50)
      type tt2
         sequence
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
      end type
      type tt1
         sequence
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
         type (tt2)  ty2
      end type
      type (tt1) ty1
      common /com1/ ty1 
!$omp threadprivate(/com1/)
!
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
!
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
!
         tia1(i)=0
         tia2(i)=0
         tia(i)=0
         tia8(i)=0
         tra(i)=0.
         tra8(i)=0.
         tra16(i)=0.
         tca(i)=(0.,0.)
         tca16(i)=(0.,0.)
         tca32(i)=(0.,0.)
         tsa(i)=' '
         tla1(i)= .false.
         tla2(i)= .false.
         tla(i)= .false.
         tla8(i)= .false.
      enddo
      ty1%mii1=99
      ty1%mii2=99
      ty1%mii=99
      ty1%mii8=99
      ty1%mrr=99.
      ty1%mrr8=99.
      ty1%mrr16=99.
      ty1%mcc=(99.,99.)
      ty1%mcc16=(99.,99.)
      ty1%mcc32=(99.,99.)
      ty1%mss='99'
      ty1%mll1=.false.
      ty1%mll2=.false.
      ty1%mll=.false.
      ty1%mll8=.false.
!
      ty1%ty2%mii1=99
      ty1%ty2%mii2=99
      ty1%ty2%mii=99
      ty1%ty2%mii8=99
      ty1%ty2%mrr=99.
      ty1%ty2%mrr8=99.
      ty1%ty2%mrr16=99.
      ty1%ty2%mcc=(99.,99.)
      ty1%ty2%mcc16=(99.,99.)
      ty1%ty2%mcc32=(99.,99.)
      ty1%ty2%mss='99'
      ty1%ty2%mll1=.false.
      ty1%ty2%mll2=.false.
      ty1%ty2%mll=.false.
      ty1%ty2%mll8=.false.
!$omp parallel private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      iia1(ith)=ty1%mii1
      iia2(ith)=ty1%mii2
      iia(ith)=ty1%mii
      iia8(ith)=ty1%mii8
      rra(ith)=ty1%mrr
      rra8(ith)=ty1%mrr8
      rra16(ith)=ty1%mrr16
      cca(ith)=ty1%mcc
      cca16(ith)=ty1%mcc16
      cca32(ith)=ty1%mcc32
      ssa(ith)=ty1%mss
      lla1(ith)=ty1%mll1
      lla2(ith)=ty1%mll2
      lla(ith)=ty1%mll
      lla8(ith)=ty1%mll8
!
      tia1(ith)=ty1%ty2%mii1
      tia2(ith)=ty1%ty2%mii2
      tia(ith)=ty1%ty2%mii
      tia8(ith)=ty1%ty2%mii8
      tra(ith)=ty1%ty2%mrr
      tra8(ith)=ty1%ty2%mrr8
      tra16(ith)=ty1%ty2%mrr16
      tca(ith)=ty1%ty2%mcc
      tca16(ith)=ty1%ty2%mcc16
      tca32(ith)=ty1%ty2%mcc32
      tsa(ith)=ty1%ty2%mss
      tla1(ith)=ty1%ty2%mll1
      tla2(ith)=ty1%ty2%mll2
      tla(ith)=ty1%ty2%mll
      tla8(ith)=ty1%ty2%mll8
      ty1%mii1 = ith
      ty1%mii2 = ith
      ty1%mii = ith
      ty1%mii8= ith
      ty1%mrr = ith
      ty1%mrr8 = ith
      ty1%mrr16 = ith
      ty1%mcc = cmplx(ith,ith)
      ty1%mcc16 = cmplx(ith,ith)
      ty1%mcc32 = cmplx(ith,ith)
      write(ty1%mss,'(i4.4)') ith
      ty1%mll1 = .true. 
      ty1%mll2 = .true. 
      ty1%mll = .true. 
      ty1%mll8 = .true. 
      ib(ith)=ith
!
      ty1%ty2%mii1 = ith
      ty1%ty2%mii2 = ith
      ty1%ty2%mii = ith
      ty1%ty2%mii8= ith
      ty1%ty2%mrr = ith
      ty1%ty2%mrr8 = ith
      ty1%ty2%mrr16 = ith
      ty1%ty2%mcc = cmplx(ith,ith)
      ty1%ty2%mcc16 = cmplx(ith,ith)
      ty1%ty2%mcc32 = cmplx(ith,ith)
      write(ty1%ty2%mss,'(i4.4)') ith
      ty1%ty2%mll1 = .true. 
      ty1%mll2 = .true. 
      ty1%ty2%mll = .true. 
      ty1%ty2%mll8 = .true. 
      tib(ith)=ith
!$omp end parallel
!
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
!
      if(tia1(1).ne.99) ier=ier+1
      if(tia2(1).ne.99) ier=ier+1
      if(tia(1).ne.99) ier=ier+1
      if(tia8(1).ne.99) ier=ier+1
      if(tra(1).ne.99.) ier=ier+1
      if(tra8(1).ne.99.) ier=ier+1
      if(tra16(1).ne.99.) ier=ier+1
      if(tca(1).ne.(99.,99.)) ier=ier+1
      if(tca16(1).ne.(99.,99.)) ier=ier+1
      if(tca32(1).ne.(99.,99.)) ier=ier+1
      if(tsa(1).ne.'99') ier=ier+1
      if(tla1(1).neqv..false.) ier=ier+1
      if(tla2(1).neqv..false.) ier=ier+1
      if(tla(1).neqv..false.) ier=ier+1
      if(tla8(1).neqv..false.) ier=ier+1
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
!
         if(tia1(i).ne.55) ier=ier+1
         if(tia2(i).ne.55) ier=ier+1
         if(tia(i).ne.55) ier=ier+1
         if(tia8(i).ne.55) ier=ier+1
         if(tra(i).ne.55.) ier=ier+1
         if(tra8(i).ne.55.) ier=ier+1
         if(tra16(i).ne.55.) ier=ier+1
         if(tca(i).ne.(55.,55.)) ier=ier+1
         if(tca16(i).ne.(55.,55.)) ier=ier+1
         if(tca32(i).ne.(55.,55.)) ier=ier+1
         if(tsa(i).ne.'str') ier=ier+1
         if(tla1(i).neqv..true.) ier=ier+1
         if(tla2(i).neqv..true.) ier=ier+1
         if(tla(i).neqv..true.) ier=ier+1
         if(tla8(i).neqv..true.) ier=ier+1
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
!
         if(tia1(i).ne.0) ier=ier+1
         if(tia2(i).ne.0) ier=ier+1
         if(tia(i).ne.0) ier=ier+1
         if(tia8(i).ne.0) ier=ier+1
         if(tra(i).ne.0.) ier=ier+1
         if(tra8(i).ne.0.) ier=ier+1
         if(tra16(i).ne.0.) ier=ier+1
         if(tca(i).ne.(0.,0.)) ier=ier+1
         if(tca16(i).ne.(0.,0.)) ier=ier+1
         if(tca32(i).ne.(0.,0.)) ier=ier+1
         if(tsa(i).ne.' ') ier=ier+1
         if(tla1(i).neqv..false.) ier=ier+1
         if(tla2(i).neqv..false.) ier=ier+1
         if(tla(i).neqv..false.) ier=ier+1
         if(tla8(i).neqv..false.) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  THREADPRIVATE clause is not active!"
         do i=1, loop
            write(*,*)"i=",i," iia1(i)=",iia1(i)," iia2(i)=",iia2(i)
            write(*,*)"      iia(i)=",iia(i)," iia8(i)=",iia8(i)
            write(*,*)"      rra(i)=",rra(i),"rra8(i)=",rra8(i)
            write(*,*)"      cca(i)=",cca(i),"cca16(i)=",cca16(i)
            write(*,*)"      cca32(i)=",cca32(i),"ssa(i)=",ssa(i)
            write(*,*)"      lla1(i)=",lla1(i),"lla2(i)=",lla2(i)
            write(*,*)"      lla(i)=",lla(i),"lla8(i)=",lla8(i)
            write(*,*)"i=",i," tia1(i)=",tia1(i)," tia2(i)=",tia2(i)
            write(*,*)"      tia(i)=",tia(i)," tia8(i)=",tia8(i)
            write(*,*)"      tra(i)=",tra(i),"tra8(i)=",tra8(i)
            write(*,*)"      tca(i)=",tca(i),"tca16(i)=",tca16(i)
            write(*,*)"      tca32(i)=",tca32(i),"tsa(i)=",tsa(i)
            write(*,*)"      tla1(i)=",tla1(i),"tla2(i)=",tla2(i)
            write(*,*)"      tla(i)=",tla(i),"tla8(i)=",tla8(i)
         enddo
         write(*,*) "     ier=",ier
         write(*,*) "    /com1/",ty1%mii1,ty1%mii2,ty1%mii,ty1%mii8
         write(*,*) "    /com1/",ty1%mrr,ty1%mrr,ty1%mrr16,ty1%mcc 
         write(*,*) "    /com1/",ty1%mcc16,ty1%mcc32,ty1%mss,ty1%mll1
         write(*,*) "    /com1/", ty1%mll2,ty1%mll,ty1%mll8
         write(*,*) "     ib=",ib
         write(*,*) "    /com1/",ty1%ty2%mii1,ty1%ty2%mii2,ty1%ty2%mii
         write(*,*) "    /com1/",ty1%ty2%mii8
         write(*,*) "    /com1/",ty1%ty2%mrr,ty1%ty2%mrr,ty1%ty2%mrr16 
         write(*,*) "    /com1/",ty1%ty2%mcc 
         write(*,*) "    /com1/",ty1%ty2%mcc16,ty1%ty2%mcc32
         write(*,*) "    /com1/",ty1%ty2%mss,ty1%ty2%mll1
         write(*,*) "    /com1/", ty1%ty2%mll2,ty1%ty2%mll,ty1%ty2%mll8
         write(*,*) "     tib=",tib
      endif
!
      stop
      end

      blockdata
      type tt2
         sequence
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
      end type
      type tt1
         sequence
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
         type (tt2)  ty2
      end type
      type (tt1) ty1
         common /com1/ ty1
!$omp threadprivate(/com1/)
         data ty1%mii1 / 55 /
         data ty1%mii2 / 55 /
         data ty1%mii / 55 /
         data ty1%mii8 / 55 /
         data ty1%mrr / 55./
         data ty1%mrr8 / 55./
         data ty1%mrr16 / 55./
         data ty1%mcc / (55.,55.) /
         data ty1%mcc16 / (55.,55.) /
         data ty1%mcc32 / (55.,55.) /
         data ty1%mss / 'str' /
         data ty1%mll1 /.true./
         data ty1%mll2 /.true./
         data ty1%mll /.true./
         data ty1%mll8 /.true./
!
         data ty1%ty2%mii1 / 55 /
         data ty1%ty2%mii2 / 55 /
         data ty1%ty2%mii / 55 /
         data ty1%ty2%mii8 / 55 /
         data ty1%ty2%mrr / 55./
         data ty1%ty2%mrr8 / 55./
         data ty1%ty2%mrr16 / 55./
         data ty1%ty2%mcc / (55.,55.) /
         data ty1%ty2%mcc16 / (55.,55.) /
         data ty1%ty2%mcc32 / (55.,55.) /
         data ty1%ty2%mss / 'str' /
         data ty1%ty2%mll1 /.true./
         data ty1%ty2%mll2 /.true./
         data ty1%ty2%mll /.true./
         data ty1%ty2%mll8 /.true./
      end

