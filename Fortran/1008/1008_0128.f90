!
!
!
!
!
      program main
      integer*4 ia1(50),ia2(50),ia(50),ia8(50),ier
      integer*4 iia1(50),iia2(50),iia(50),iia8(50)
      real*4 ra(50),ra8(50),ra16(50)
      real*4 rra(50),rra8(50),rra16(50)
      complex*8 cca(50),cca16(50),cca32(50)
      complex*8 ccca(50),ccca16(50),ccca32(50)
      character*8 ha(50)
      character*8 hha(50)
      logical*1 la1(50),la2(50),la(50),la8(50)
      logical*1 lla1(50),lla2(50),lla(50),lla8(50)
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*1 mt
      character*4 c1,cc1
      character*8 c2,cc2
      type tt2
         sequence
         integer*1 ma1,ix
         integer*2 ma2 
         integer*4 ma
         integer*8 ma8
         real*4 rma,rx
         real*8 rma8
         real*16 rma16
         complex*8 cma
         complex*16 cma16
         complex*32 cma32
         character*4 cha
         character*8 chc
         logical*1 lma1,lx
         logical*2 lma2
         logical*4 lma,ly 
         logical*8 lma8
      end type
      type tt1
         sequence
         integer*1 ma1,ix
         integer*2 ma2 
         integer*4 ma
         integer*8 ma8
         real*4 rma,rx
         real*8 rma8
         real*16 rma16
         complex*8 cma
         complex*16 cma16
         complex*32 cma32
         character*4 cha
         character*8 chc
         logical*1 lma1,lx
         logical*2 lma2
         logical*4 lma,ly 
         logical*8 lma8
         type (tt2) ty2
      end type
      type (tt1) ty1
      common /com1/  ty1,mt
!$omp threadprivate(/com1/)
!
      ia1 = 0
      ia2 = 0
      ia = 0
      ia8 = 0
      ra = 0.
      ra8 = 0.
      ra16 = 0.
      cca =cmplx(0,0)
      cca16 =cmplx(0,0)
      cca32 =cmplx(0,0)
      ha = ' '
      c1=' '
      c2=' '
      la1= .false.
      la2= .false.
      la= .false.
      la8= .false.
      iia1 = 0
      iia2 = 0
      iia = 0
      iia8 = 0
      rra = 0.
      rra8 = 0.
      rra16 = 0.
      ccca =cmplx(0,0)
      ccca16 =cmplx(0,0)
      ccca32 =cmplx(0,0)
      hha = ' '
      cc1=' '
      cc2=' '
      lla1= .false.
      lla2= .false.
      lla= .false.
      lla8= .false.
      mt = 1
!$    thread = OMP_GET_MAX_THREADS()
!
!$omp parallel
!$    mt=OMP_GET_THREAD_NUM()+1
      ty1%ma1 = 0
      ty1%ma2 = 0
      ty1%ma = 0
      ty1%ma8 = 0
      ty1%rma = 0.
      ty1%rma8 = 0.
      ty1%rma16 = 0.
      ty1%cma =cmplx(0,0)
      ty1%cma16 =cmplx(0,0)
      ty1%cma32 =cmplx(0,0)
      ty1%cha = 'yyyy'
      ty1%lma1 = .false.
      ty1%lma2 = .false.
      ty1%lma = .false.
      ty1%lma8 = .false.
      ty1%ty2%ma1 = 0
      ty1%ty2%ma2 = 0
      ty1%ty2%ma = 0
      ty1%ty2%ma8 = 0
      ty1%ty2%rma = 0.
      ty1%ty2%rma8 = 0.
      ty1%ty2%rma16 = 0.
      ty1%ty2%cma =cmplx(0,0)
      ty1%ty2%cma16 =cmplx(0,0)
      ty1%ty2%cma32 =cmplx(0,0)
      ty1%ty2%cha = 'yyyy'
      ty1%ty2%lma1 = .false.
      ty1%ty2%lma2 = .false.
      ty1%ty2%lma = .false.
      ty1%ty2%lma8 = .false.
      call sub(thread)
      ia1(mt)=ty1%ma1
      ia2(mt)=ty1%ma2
      ia(mt)=ty1%ma
      ia8(mt)=ty1%ma8
      ra(mt)=ty1%rma
      ra8(mt)=ty1%rma8
      ra16(mt)=ty1%rma16
      cca(mt)=ty1%cma
      cca16(mt)=ty1%cma16
      cca32(mt)=ty1%cma32
      ha(mt)=ty1%chc
      la1(mt)=ty1%lma1
      la2(mt)=ty1%lma2
      la(mt)=ty1%lma
      la8(mt)=ty1%lma8
      iia1(mt)=ty1%ty2%ma1
      iia2(mt)=ty1%ty2%ma2
      iia(mt)=ty1%ty2%ma
      iia8(mt)=ty1%ty2%ma8
      rra(mt)=ty1%ty2%rma
      rra8(mt)=ty1%ty2%rma8
      rra16(mt)=ty1%ty2%rma16
      ccca(mt)=ty1%ty2%cma
      ccca16(mt)=ty1%ty2%cma16
      ccca32(mt)=ty1%ty2%cma32
      hha(mt)=ty1%ty2%chc
      lla1(mt)=ty1%ty2%lma1
      lla2(mt)=ty1%ty2%lma2
      lla(mt)=ty1%ty2%lma
      lla8(mt)=ty1%ty2%lma8
!$omp end parallel
!
      ier = 0
      do i=1,thread
         if(ia1(i).ne.i) ier=ier+1
         if(ia2(i).ne.i) ier=ier+1
         if(ia(i).ne.i) ier=ier+1
         if(ia8(i).ne.i) ier=ier+1
         if(ra(i).ne.real(i)) ier=ier+1
         if(ra8(i).ne.real(i)) ier=ier+1
         if(ra16(i).ne.real(i)) ier=ier+1
         if(cca(i).ne.cmplx(i,i)) ier=ier+1
         if(cca16(i).ne.cmplx(i,i)) ier=ier+1
         if(cca32(i).ne.cmplx(i,i)) ier=ier+1
         write(c1,'(i4.4)') i
         c2 = ty1%cha//c1
         if(ha(i).ne.c2) ier=ier+1
         if(la1(i).neqv..true.) ier=ier+1
         if(la2(i).neqv..true.) ier=ier+1
         if(la(i).neqv..true.) ier=ier+1
         if(la8(i).neqv..true.) ier=ier+1
!
         if(iia1(i).ne.i) ier=ier+1
         if(iia2(i).ne.i) ier=ier+1
         if(iia(i).ne.i) ier=ier+1
         if(iia8(i).ne.i) ier=ier+1
         if(rra(i).ne.real(i)) ier=ier+1
         if(rra8(i).ne.real(i)) ier=ier+1
         if(rra16(i).ne.real(i)) ier=ier+1
         if(ccca(i).ne.cmplx(i,i)) ier=ier+1
         if(ccca16(i).ne.cmplx(i,i)) ier=ier+1
         if(ccca32(i).ne.cmplx(i,i)) ier=ier+1
         write(cc1,'(i4.4)') i
         cc2 = ty1%ty2%cha//cc1
         if(hha(i).ne.cc2) ier=ier+1
         if(lla1(i).neqv..true.) ier=ier+1
         if(lla2(i).neqv..true.) ier=ier+1
         if(lla(i).neqv..true.) ier=ier+1
         if(lla8(i).neqv..true.) ier=ier+1
      enddo
      do i=thread+1,loop
         if(ia1(i).ne.0) ier=ier+1
         if(ia2(i).ne.0) ier=ier+1
         if(ia(i).ne.0) ier=ier+1
         if(ia8(i).ne.0) ier=ier+1
         if(ra(i).ne.0.) ier=ier+1
         if(ra8(i).ne.0.) ier=ier+1
         if(ra16(i).ne.0.) ier=ier+1
         if(cca(i).ne.cmplx(0,0)) ier=ier+1
         if(cca16(i).ne.cmplx(0,0)) ier=ier+1
         if(cca32(i).ne.cmplx(0,0)) ier=ier+1
         if(ha(i).ne.' ') ier=ier+1
         if(la1(i).neqv..false.) ier=ier+1
         if(la2(i).neqv..false.) ier=ier+1
         if(la(i).neqv..false.) ier=ier+1
         if(la8(i).neqv..false.) ier=ier+1
!
         if(iia1(i).ne.0) ier=ier+1
         if(iia2(i).ne.0) ier=ier+1
         if(iia(i).ne.0) ier=ier+1
         if(iia8(i).ne.0) ier=ier+1
         if(rra(i).ne.0.) ier=ier+1
         if(rra8(i).ne.0.) ier=ier+1
         if(rra16(i).ne.0.) ier=ier+1
         if(ccca(i).ne.cmplx(0,0)) ier=ier+1
         if(ccca16(i).ne.cmplx(0,0)) ier=ier+1
         if(ccca32(i).ne.cmplx(0,0)) ier=ier+1
         if(hha(i).ne.' ') ier=ier+1
         if(lla1(i).neqv..false.) ier=ier+1
         if(lla2(i).neqv..false.) ier=ier+1
         if(lla(i).neqv..false.) ier=ier+1
         if(lla8(i).neqv..false.) ier=ier+1
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      threadprivate(/com1/) parallel -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  THREADPRIVATE is not active!"
         write(*,*) "      ia1=", ia1
         write(*,*) "      ia2=", ia2
         write(*,*) "      ia=", ia
         write(*,*) "      ia8=", ia8
         write(*,*) "      ra=", ra
         write(*,*) "      ra8=", ra8
         write(*,*) "      ra16=", ra16
         write(*,*) "      cca=", cca
         write(*,*) "      cca16=", cca16
         write(*,*) "      cca32=", cca32
         write(*,*) "      ha=", ha
         write(*,*) "      la1=", la1
         write(*,*) "      la2=", la2
         write(*,*) "      la=", la
         write(*,*) "      la8=", la8
!
         write(*,*) "      iia1=", iia1
         write(*,*) "      iia2=", iia2
         write(*,*) "      iia=", iia
         write(*,*) "      iia8=", iia8
         write(*,*) "      rra=", rra
         write(*,*) "      rra8=", rra8
         write(*,*) "      rra16=", rra16
         write(*,*) "      ccca=", ccca
         write(*,*) "      ccca16=", ccca16
         write(*,*) "      ccca32=", ccca32
         write(*,*) "      hha=", hha
         write(*,*) "      lla1=", lla1
         write(*,*) "      lla2=", lla2
         write(*,*) "      lla=", lla
         write(*,*) "      lla8=", lla8
      endif
!
      stop
      end

      subroutine sub(thread)
      integer*4 thread
      integer*1 mt
      character*4 chb,cchb
      type tt2
         sequence
         integer*1 ma1,ix
         integer*2 ma2
         integer*4 ma 
         integer*8 ma8
         real*4 rma,rx
         real*8 rma8
         real*16 rma16
         complex*8 cma
         complex*16 cma16
         complex*32 cma32
         character*4 cha
         character*8 chc
         logical*1 lma1,lx
         logical*2 lma2
         logical*4 lma,ly
         logical*8 lma8
      end type
      type tt1
         sequence
         integer*1 ma1,ix
         integer*2 ma2
         integer*4 ma 
         integer*8 ma8
         real*4 rma,rx
         real*8 rma8
         real*16 rma16
         complex*8 cma
         complex*16 cma16
         complex*32 cma32
         character*4 cha
         character*8 chc
         logical*1 lma1,lx
         logical*2 lma2
         logical*4 lma,ly
         logical*8 lma8
         type (tt2) ty2
      end type
      type (tt1) ty1
      common /com1/ ty1,mt 
!$omp threadprivate(/com1/)
!
      ty1%ma1=ty1%ma1+mt
      ty1%ma2=ty1%ma2+mt
      ty1%ma=ty1%ma+mt
      ty1%ma8=ty1%ma8+mt
      ty1%rma=ty1%rma+mt
      ty1%rma8=ty1%rma8+mt
      ty1%rma16=ty1%rma16+mt
      ty1%cma = ty1%cma + cmplx(mt,mt)
      ty1%cma16 = ty1%cma16 + cmplx(mt,mt)
      ty1%cma32 = ty1%cma32 + cmplx(mt,mt)
      chb = ' '
      write(chb,'(i4.4)') mt
      ty1%chc=ty1%cha//chb
      if ((1.le.mt).and.(mt.le.thread)) then
          ty1%lma1=.true.
          ty1%lma2=.true.
          ty1%lma=.true.
          ty1%lma8=.true.
      endif
!
      ty1%ty2%ma1=ty1%ty2%ma1+mt
      ty1%ty2%ma2=ty1%ty2%ma2+mt
      ty1%ty2%ma=ty1%ty2%ma+mt
      ty1%ty2%ma8=ty1%ty2%ma8+mt
      ty1%ty2%rma=ty1%ty2%rma+mt
      ty1%ty2%rma8=ty1%ty2%rma8+mt
      ty1%ty2%rma16=ty1%ty2%rma16+mt
      ty1%ty2%cma = ty1%ty2%cma + cmplx(mt,mt)
      ty1%ty2%cma16 = ty1%ty2%cma16 + cmplx(mt,mt)
      ty1%ty2%cma32 = ty1%ty2%cma32 + cmplx(mt,mt)
      cchb = ' '
      write(cchb,'(i4.4)') mt
      ty1%ty2%chc=ty1%ty2%cha//cchb
      if ((1.le.mt).and.(mt.le.thread)) then
          ty1%ty2%lma1=.true.
          ty1%ty2%lma2=.true.
          ty1%ty2%lma=.true.
          ty1%ty2%lma8=.true.
      endif
      return
      end
