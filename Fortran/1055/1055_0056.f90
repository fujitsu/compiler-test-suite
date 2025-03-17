!
!
!
!
!
!
      program main
      integer*4 ic, ier
      complex*8 cb(50), cc
      character*4 ss
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      type tt1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (tt1) ty1
!
!$    thread = OMP_GET_MAX_THREADS()
      cb = (0,0)
      ty1 = tt1(7, 3.5, (1.9,8.1), 'str')
!
!$omp parallel
!$omp do firstprivate(ty1,ss)
      do j=1, loop
         cb(j) = cmplx(real(ty1%tii),ty1%trr) + ty1%tcc
         write(ss,'(i4.4)')j
         ty1 = tt1(j, real(j), cmplx(j,j), ss)
      end do
!$omp end do
!$omp end parallel
!
      ic = 0
      ier = 0
      do j=1, loop
         if (cb(j).ne.cmplx((j-1)*2,(j-1)*2)) then
            cc = cmplx(real(ty1%tii),ty1%trr) + ty1%tcc
            if (cb(j).eq.cc) then
               ic=ic+1
            else
               ier=ier+1
               write(*,*) "E  j=",j," cb(j)=",cb(j)," must be ",j*2.0
            endif
         endif
      enddo
      if(ty1%tss.ne.'str') ier=ier+1
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ty1) ------"
      if(ier.eq.0 .and. ic.le.thread) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         write(*,*) "     ic=",ic,"  thread=",thread
         write(*,*) "     ier=",ier
         write(*,*) "     ty1=",ty1
      endif
      stop
      end
