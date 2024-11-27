!
!
!
!
!
!
      program main
      integer*4 ic, ier
      complex*8 cb(50), cc
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      integer*4   mii
      real*4      mrr
      complex*8   mcc
      character*4 mss
      common /com1/ mii, mrr, mcc, mss
!
!$    thread = OMP_GET_MAX_THREADS()
      cb = (0,0)
      mii = 7
      mrr = 3.5
      mcc = (1.9,8.1)
      mss = 'str'
!
!$omp parallel
!$omp do firstprivate(/com1/)
      do j=1, loop
         cb(j) = cmplx(real(mii),mrr) + mcc
         mii = j
         mrr = j
         mcc = cmplx(j,j)
         write(mss,'(i4.4)')j
      end do
!$omp end do
!$omp end parallel
!
      ic = 0
      ier = 0
      do j=1, loop
         if (cb(j).ne.cmplx((j-1)*2,(j-1)*2)) then
         cc = cmplx(real(mii),mrr) + mcc
            if (cb(j).eq.cc) then
               ic=ic+1
            else
               ier=ier+1
               write(*,*) "E  j=",j," cb(j)=",cb(j)," must be ",j*2.0
            endif
         endif
      enddo
      if(mss.ne.'str') ier=ier+1
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(/com1/) ------"
      if(ier.eq.0 .and. ic.le.thread) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ic=",ic,"  thread=",thread
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/ ", mii, mrr, mcc, mss
      endif
      stop
      end
