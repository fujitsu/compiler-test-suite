!
!
!
!
!
      program main
      integer*4 ia1(50),ia2(50),ia(50),ia8(50),ier
      real*4 ra(50),ra8(50),ra16(50)
      complex*8 cca(50),cca16(50),cca32(50)
      character*8 ha(50)
      logical*1 la1(50),la2(50),la(50),la8(50)
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*1 mt
      character*4 c1
      character*8 c2
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
         write(*,*) "      ha=", ha
         write(*,*) "      la1=", la1
         write(*,*) "      la2=", la2
         write(*,*) "      la=", la
         write(*,*) "      la8=", la8
      endif
!
      stop
      end

      subroutine sub(thread)
      integer*4 thread
      integer*1 mt
      character*4 chb
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
      return
      end
