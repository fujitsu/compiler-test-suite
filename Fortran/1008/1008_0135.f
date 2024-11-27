c
c
c
c
c
      program main
      integer*1 ia(4,50), ib(4,50)
      real*4    ira(3,50),irb(3,50)
      integer*4 it, ier
      complex*8 ica(3,50),icb(3,50)
      character*8 ha(50),hb(50)
      logical*1 la(4,50),lb(4,50)
      integer*4 :: loop=50, ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*1 ma1,mt
      integer*2 ma2
      integer*4 ma
      integer*8 ma8
      real*4    ra,rx
      real*8    ra8
      real*16   ra16
      complex*8 ca
      complex*16 ca16
      complex*32 ca32
      character*4 cha,cc
      character*8 chc,cd
      logical*1 lma1,lx
      logical*2 lma2
      logical*4 lma,ly
      logical*8 lma8
      common /com1/ ma1,mt,ma2,ma,ma8,ra,rx,ra8,ra16,ca,ca16,ca32,
     -              cha,chc,lma1,lx,lma2,lma,ly,lma8
!$omp threadprivate(/com1/)
c
      ia=0
      ib=0
      ira=0.
      irb=0.
      ica=cmplx(0,0)
      icb=cmplx(0,0)
      ha=' '
      hb=' '
      la=.false.
      lb=.true.
      ma1=1
      ma2=1
      ma=1
      ma8=1
      ra=1.
      ra8=1.
      ra16=1.
      ca=cmplx(1,1)
      ca16=cmplx(1,1)
      ca32=cmplx(1,1)
      cha='yyyy'
      lma1=.false.
      lma2=.false.
      lma=.false.
      lma8=.false.
      mt=1
!$    ith=OMP_GET_MAX_THREADS()
c
!$omp parallel copyin(/com1/) private(it)
!$    it=OMP_GET_THREAD_NUM()+1
      do j=1,4
         ib(j,it)=mt
      enddo
      do j=1,3
         irb(j,it)=mt
      enddo
      do j=1,3
         icb(j,it)=cmplx(mt,mt)
      enddo
      write(hb(it),'(i4.4)') mt
      mt=it
      call sub(ith)
      ia(1,mt)=ma1
      ia(2,mt)=ma2
      ia(3,mt)=ma
      ia(4,mt)=ma8
      ira(1,mt)=ra
      ira(2,mt)=ra8
      ira(3,mt)=ra16
      ica(1,mt)=ca
      ica(2,mt)=ca16
      ica(3,mt)=ca32
      ha(mt)=chc
      la(1,mt)=lma1
      la(2,mt)=lma2
      la(3,mt)=lma
      la(4,mt)=lma8
!$omp end parallel
c
      ier=0
      do i=1,ith
         do j=1,4
         if(ia(j,i).ne.i+1) ier=ier+1
         if(ib(j,i).ne.1) ier=ier+1
         enddo
      enddo
      do i=1,ith
         do j=1,3
         if(ira(j,i).ne.real(i+1)) ier=ier+1
         if(irb(j,i).ne.1.) ier=ier+1
         enddo
      enddo
      do i=1,ith
         do j=1,3
         if(ica(j,i).ne.cmplx(i+1,i+1)) ier=ier+1
         if(icb(j,i).ne.cmplx(1,1)) ier=ier+1
         enddo
      enddo
      do i=ith+1,loop
         do j=1,4
         if(ia(j,i).ne.0) ier=ier+1
         if(ib(j,i).ne.0) ier=ier+1
         enddo
      enddo
      do i=ith+1,loop
         do j=1,3
         if(ira(j,i).ne.0.) ier=ier+1
         if(irb(j,i).ne.0.) ier=ier+1
         enddo
      enddo
      do i=ith+1,loop
         do j=1,3
         if(ica(j,i).ne.cmplx(0,0)) ier=ier+1
         if(icb(j,i).ne.cmplx(0,0)) ier=ier+1
         enddo
      enddo
      cc=' '
      do i=1,ith
         write(cc,'(i4.4)') i
         cd=cha//cc
            if (ha(i).ne.cd) ier=ier+1
            if (hb(i).ne.'0001') ier=ier+1
      enddo
      do i=ith+1,loop
         if(ha(i).ne.' ') ier=ier+1
         if(hb(i).ne.' ') ier=ier+1
      enddo
      do i=1,ith
         do j=1,4
         if(la(j,i).neqv..true.) ier=ier+1
         if(lb(j,i).neqv..true.) ier=ier+1
         enddo
      enddo
      do i=ith+1,loop
         do j=1,4
         if(la(j,i).neqv..false.) ier=ier+1
         if(lb(j,i).neqv..true.) ier=ier+1
         enddo
      enddo
      write(*,*) "----- TEST --"
      write(*,*) "      threadprivate(/com1/)"
      write(*,*) "      parallel copyin(/com1/) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  COPYIN Directive is not active!"
         write(*,*) "      ier=", ier
         write(*,*) "      ia=", ia
         write(*,*) "      ib=", ib
         write(*,*) "      ira=", ira
         write(*,*) "      irb=", irb
         write(*,*) "      ica=", ica
         write(*,*) "      icb=", icb
         write(*,*) "       ha=", ha
         write(*,*) "       hb=", hb
         write(*,*) "       la=", la
         write(*,*) "       lb=", lb
      end if
c
      stop
      end

      subroutine sub(ith)
      integer*1 ma1,mt
      integer*2 ma2
      integer*4 ma
      integer*8 ma8
      real*4    ra,rx
      real*8    ra8
      real*16   ra16
      complex*8 ca
      complex*16 ca16
      complex*32 ca32
      character*4 cha,chb
      character*8 chc
      logical*1 lma1,lx
      logical*2 lma2
      logical*4 lma,ly
      logical*8 lma8
      common /com1/ ma1,mt,ma2,ma,ma8,ra,rx,ra8,ra16,ca,ca16,ca32,
     -              cha,chc,lma1,lx,lma2,lma,ly,lma8
!$omp threadprivate(/com1/)
c
      ma1=ma1+mt
      ma2=ma2+mt
      ma=ma+mt
      ma8=ma8+mt
      ra=ra+mt
      ra8=ra8+mt
      ra16=ra16+mt
      ca=ca+cmplx(mt,mt)
      ca16=ca16+cmplx(mt,mt)
      ca32=ca32+cmplx(mt,mt)
      chb=' '
      write(chb,'(i4.4)') mt
      chc=cha//chb
c
      if (1.le.mt .and. mt.le.ith) then
          lma1=.true.
          lma2=.true.
          lma=.true.
          lma8=.true.
      endif
c
      return
      end
