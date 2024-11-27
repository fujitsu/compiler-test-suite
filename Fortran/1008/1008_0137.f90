!
!
!
!
!
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
      character*4 cc
      character*8 cd
      type tt1
         sequence
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
         character*4 cha
         character*8 chc
         logical*1 lma1,lx
         logical*2 lma2
         logical*4 lma,ly
         logical*8 lma8
      end type
      type (tt1) ty1
      common /com1/ ty1 
!$omp threadprivate(/com1/)
!
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
      ty1%ma1=1
      ty1%ma2=1
      ty1%ma=1
      ty1%ma8=1
      ty1%ra=1.
      ty1%ra8=1.
      ty1%ra16=1.
      ty1%ca=cmplx(1,1)
      ty1%ca16=cmplx(1,1)
      ty1%ca32=cmplx(1,1)
      ty1%cha='yyyy'
      ty1%lma1=.false.
      ty1%lma2=.false.
      ty1%lma=.false.
      ty1%lma8=.false.
      ty1%mt=1
!$    ith=OMP_GET_MAX_THREADS()
!
!$omp parallel copyin(ty1) private(it)
!$    it=OMP_GET_THREAD_NUM()+1
      do j=1,4
         ib(j,it)=ty1%mt
      enddo
      do j=1,3
         irb(j,it)=ty1%mt
      enddo
      do j=1,3
         icb(j,it)=cmplx(ty1%mt,ty1%mt)
      enddo
      write(hb(it),'(i4.4)') ty1%mt
      ty1%mt=it
      call sub(ith)
      ia(1,ty1%mt)=ty1%ma1
      ia(2,ty1%mt)=ty1%ma2
      ia(3,ty1%mt)=ty1%ma
      ia(4,ty1%mt)=ty1%ma8
      ira(1,ty1%mt)=ty1%ra
      ira(2,ty1%mt)=ty1%ra8
      ira(3,ty1%mt)=ty1%ra16
      ica(1,ty1%mt)=ty1%ca
      ica(2,ty1%mt)=ty1%ca16
      ica(3,ty1%mt)=ty1%ca32
      ha(ty1%mt)=ty1%chc
      la(1,ty1%mt)=ty1%lma1
      la(2,ty1%mt)=ty1%lma2
      la(3,ty1%mt)=ty1%lma
      la(4,ty1%mt)=ty1%lma8
!$omp end parallel
!
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
         cd=ty1%cha//cc
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
!
      stop
      end

      subroutine sub(ith)
      character*4 chb
      type tt1
         sequence
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
         character*4 cha
         character*8 chc
         logical*1 lma1,lx
         logical*2 lma2
         logical*4 lma,ly
         logical*8 lma8
      end type
      type (tt1) ty1
      common /com1/ ty1 
!$omp threadprivate(/com1/)
!
      ty1%ma1=ty1%ma1+ty1%mt
      ty1%ma2=ty1%ma2+ty1%mt
      ty1%ma=ty1%ma+ty1%mt
      ty1%ma8=ty1%ma8+ty1%mt
      ty1%ra=ty1%ra+ty1%mt
      ty1%ra8=ty1%ra8+ty1%mt
      ty1%ra16=ty1%ra16+ty1%mt
      ty1%ca=ty1%ca+cmplx(ty1%mt,ty1%mt)
      ty1%ca16=ty1%ca16+cmplx(ty1%mt,ty1%mt)
      ty1%ca32=ty1%ca32+cmplx(ty1%mt,ty1%mt)
      chb=' '
      write(chb,'(i4.4)') ty1%mt
      ty1%chc=ty1%cha//chb
!
      if (1.le.ty1%mt .and. ty1%mt.le.ith) then
          ty1%lma1=.true.
          ty1%lma2=.true.
          ty1%lma=.true.
          ty1%lma8=.true.
      endif
!
      return
      end
