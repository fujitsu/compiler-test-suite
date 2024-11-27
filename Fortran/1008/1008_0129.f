c
c
c
c
c
      program main
      integer*4 ia, ith, ier
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
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
!$    thread = OMP_GET_MAX_THREADS()
      ia = 0
      mii1 = 0
      mii2 = 0
      mii = 0
      mii8 = 0
      mrr = 0.
      mrr8 = 0.
      mrr16 = 0.
      mcc = cmplx(0.,0.)
      mcc16 = cmplx(0.,0.)
      mcc32 = cmplx(0.,0.)
      mss = ' '
      mll1 = .false.
      mll2 = .false.
      mll = .false.
      mll8 = .false.
c
!$omp parallel private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      mii1 = ith
      mii2 = ith
      mii = ith
      mii8 = ith
      mrr = ith
      mrr8 = ith
      mrr16 = ith
      mcc = cmplx(ith,ith)
      mcc16 = cmplx(ith,ith)
      mcc32 = cmplx(ith,ith)
      write(mss,'(i4.4)') ith
      mll1 = .true.
      mll2 = .true.
      mll= .true.
      mll8 = .true.
!$omp atomic
      ia = ia+1
!$omp end parallel
c
      ier = 0
      if(ia.ne.thread) ier=ier+1
      if(mii1.ne.1) ier=ier+1
      if(mii2.ne.1) ier=ier+1
      if(mii.ne.1) ier=ier+1
      if(mii8.ne.1) ier=ier+1
      if(mrr.ne.1.) ier=ier+1
      if(mrr8.ne.1.) ier=ier+1
      if(mrr16.ne.1.) ier=ier+1
      if(mcc.ne.(1.,1.)) ier=ier+1
      if(mcc16.ne.(1.,1.)) ier=ier+1
      if(mcc32.ne.(1.,1.)) ier=ier+1
      if(mss.ne.'0001') ier=ier+1
      if(mll1.neqv..true.) ier=ier+1
      if(mll2.neqv..true.) ier=ier+1
      if(mll.neqv..true.) ier=ier+1
      if(mll8.neqv..true.) ier=ier+1
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  THREADPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/", mii1,mii2,mii,mii8,mrr,mrr8,mrr16,
     -                    mcc,mcc16,mcc32,mss,mll1,mll2,mll,mll8
      endif
      stop
      end

