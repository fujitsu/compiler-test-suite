c
c
c
c
c
      program main
      integer*4 ia1(50),ia2(50),ia(50),ia8(50),ier
      real*4 ra(50),ra8(50),ra16(50)
      complex*8 cca(50),cca16(50),cca32(50)
      character*8 ha(50)
      logical*1 la1(50),la2(50),la(50),la8(50)
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*1 ma1, mt
      integer*2 ma2 
      integer*4 ma
      integer*8 ma8
      real*4 rma,rx
      real*8 rma8
      real*16 rma16
      complex*8 cma
      complex*16 cma16
      complex*32 cma32
      character*4 cha,c1
      character*8 chc,c2
      logical*1 lma1,lx
      logical*2 lma2
      logical*4 lma,ly 
      logical*8 lma8
      common /com1/ ma1,mt,ma2,ma,ma8,rma,rx,rma8,rma16,cma,cma16,
     -       cma32,cha,chc,lma1,lx,lma2,lma,ly,lma8
!$omp threadprivate(/com1/)
c
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
c
!$omp parallel
!$    mt=OMP_GET_THREAD_NUM()+1
      ma1 = 0
      ma2 = 0
      ma = 0
      ma8 = 0
      rma = 0.
      rma8 = 0.
      rma16 = 0.
      cma =cmplx(0,0)
      cma16 =cmplx(0,0)
      cma32 =cmplx(0,0)
      cha = 'yyyy'
      lma1 = .false.
      lma2 = .false.
      lma = .false.
      lma8 = .false.
      call sub(thread)
      ia1(mt)=ma1
      ia2(mt)=ma2
      ia(mt)=ma
      ia8(mt)=ma8
      ra(mt)=rma
      ra8(mt)=rma8
      ra16(mt)=rma16
      cca(mt)=cma
      cca16(mt)=cma16
      cca32(mt)=cma32
      ha(mt)=chc
      la1(mt)=lma1
      la2(mt)=lma2
      la(mt)=lma
      la8(mt)=lma8
!$omp end parallel
c
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
         c2 = cha//c1
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
         write(*,*) "      ia=", ia1,ia2,ia,ia8,ra,ra8,ra16,cca,cca16,
     -                           cca32,ha,la1,la2,la,la8
      endif
c
      stop
      end

      subroutine sub(thread)
      integer*1 ma1, mt
      integer*2 ma2
      integer*4 ma 
      integer*8 ma8
      real*4 rma,rx
      real*8 rma8
      real*16 rma16
      complex*8 cma
      complex*16 cma16
      complex*32 cma32
      character*4 cha,chb
      character*8 chc
      logical*1 lma1,lx
      logical*2 lma2
      logical*4 lma,ly
      logical*8 lma8
      integer*4 thread
      common /com1/ ma1,mt,ma2,ma,ma8,rma,rx,rma8,rma16,cma,cma16,
     -              cma32,cha,chc,lma1,lx,lma2,lma,ly,lma8
!$omp threadprivate(/com1/)
c
      ma1=ma1+mt
      ma2=ma2+mt
      ma=ma+mt
      ma8=ma8+mt
      rma=rma+mt
      rma8=rma8+mt
      rma16=rma16+mt
      cma = cma + cmplx(mt,mt)
      cma16 = cma16 + cmplx(mt,mt)
      cma32 = cma32 + cmplx(mt,mt)
      chb = ' '
      write(chb,'(i4.4)') mt
      chc=cha//chb
      if ((1.le.mt).and.(mt.le.thread)) then
          lma1=.true.
          lma2=.true.
          lma=.true.
          lma8=.true.
      endif
c
      return
      end
