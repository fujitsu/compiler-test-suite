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
      integer*4   mii
      real*4      mrr
      complex*8   mcc
      character*4 mss
      common /com1/ mii, mrr, mcc, mss
!$omp threadprivate(/com1/)
c
!$    thread = OMP_GET_MAX_THREADS()
      ia = 0
      mii = 0
      mrr = 0.
      mcc = cmplx(0.,0.)
      mss = ' '
c
!$omp parallel private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      mii = ith
      mrr = ith
      mcc = cmplx(ith,ith)
      write(mss,'(i4.4)') ith
!$omp atomic
      ia = ia+1
!$omp end parallel
c
      ier = 0
      if(ia.ne.thread) ier=ier+1
      if(mii.ne.1) ier=ier+1
      if(mrr.ne.1.) ier=ier+1
      if(mcc.ne.(1.,1.)) ier=ier+1
      if(mss.ne.'0001') ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      parallel private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  THREADPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/", mii, mrr, mcc, mss
      endif
      stop
      end

