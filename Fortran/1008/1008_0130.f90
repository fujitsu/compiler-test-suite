!
!
!
!
!
      program main
      integer*4 ia, ith, ier
      integer*4 :: thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
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
      end type
      type (tt1) ty1
      common /com1/ ty1 
!$omp threadprivate(/com1/)
!
!$    thread = OMP_GET_MAX_THREADS()
      ia = 0
      ty1%mii1 = 0
      ty1%mii2 = 0
      ty1%mii = 0
      ty1%mii8 = 0
      ty1%mrr = 0.
      ty1%mrr8 = 0.
      ty1%mrr16 = 0.
      ty1%mcc = cmplx(0.,0.)
      ty1%mcc16 = cmplx(0.,0.)
      ty1%mcc32 = cmplx(0.,0.)
      ty1%mss = ' '
      ty1%mll1 = .false.
      ty1%mll2 = .false.
      ty1%mll = .false.
      ty1%mll8 = .false.
!
!$omp parallel private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      ty1%mii1 = ith
      ty1%mii2 = ith
      ty1%mii = ith
      ty1%mii8 = ith
      ty1%mrr = ith
      ty1%mrr8 = ith
      ty1%mrr16 = ith
      ty1%mcc = cmplx(ith,ith)
      ty1%mcc16 = cmplx(ith,ith)
      ty1%mcc32 = cmplx(ith,ith)
      write(ty1%mss,'(i4.4)') ith
      ty1%mll1 = .true.
      ty1%mll2 = .true.
      ty1%mll= .true.
      ty1%mll8 = .true.
!$omp atomic
      ia = ia+1
!$omp end parallel
!
      ier = 0
      if(ia.ne.thread) ier=ier+1
      if(ty1%mii1.ne.1) ier=ier+1
      if(ty1%mii2.ne.1) ier=ier+1
      if(ty1%mii.ne.1) ier=ier+1
      if(ty1%mii8.ne.1) ier=ier+1
      if(ty1%mrr.ne.1.) ier=ier+1
      if(ty1%mrr8.ne.1.) ier=ier+1
      if(ty1%mrr16.ne.1.) ier=ier+1
      if(ty1%mcc.ne.(1.,1.)) ier=ier+1
      if(ty1%mcc16.ne.(1.,1.)) ier=ier+1
      if(ty1%mcc32.ne.(1.,1.)) ier=ier+1
      if(ty1%mss.ne.'0001') ier=ier+1
      if(ty1%mll1.neqv..true.) ier=ier+1
      if(ty1%mll2.neqv..true.) ier=ier+1
      if(ty1%mll.neqv..true.) ier=ier+1
      if(ty1%mll8.neqv..true.) ier=ier+1
      write(*,*) "----- TEST --"
      write(*,*) "      parallel private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  THREADPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     ty1%mii1=",ty1%mii1
         write(*,*) "     ty1%mii2=",ty1%mii2
         write(*,*) "     ty1%mii=",ty1%mii
         write(*,*) "     ty1%mii8=",ty1%mii8
         write(*,*) "     ty1%mrr=",ty1%mrr
         write(*,*) "     ty1%mrr8=",ty1%mrr8
         write(*,*) "     ty1%mrr16=",ty1%mrr16
         write(*,*) "     ty1%mcc=",ty1%mcc
         write(*,*) "     ty1%mcc16=",ty1%mcc16
         write(*,*) "     ty1%mcc32=",ty1%mcc32
         write(*,*) "     ty1%mss=",ty1%mss
         write(*,*) "     ty1%mll1=",ty1%mll1
         write(*,*) "     ty1%mll2=",ty1%mll2
         write(*,*) "     ty1%mll=",ty1%mll
         write(*,*) "     ty1%mll8=",ty1%mll8
         write(*,*) "     ier=",ier
      endif
      stop
      end

