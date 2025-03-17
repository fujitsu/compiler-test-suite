!
!
!
!
!
!
      program main
      integer*4 ier
      complex*8 cb(50)
      character*4 ss
      integer*4 :: loop=50
      type tt1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (tt1) ty1
!
      cb = (0,0)
      ty1 = tt1(7, 3.5, (1.9,8.1), 'str')
!
!$omp parallel
!$omp do lastprivate(ty1,ss)
      do j=1, loop
         write(ss,'(i4.4)')j
         ty1 = tt1(j, real(j), cmplx(j,j), ss)
         cb(j) = cmplx(real(ty1%tii),ty1%trr) + ty1%tcc
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
         if (cb(j).ne.cmplx(j*2,j*2)) then
            ier=ier+1
            write(*,*) "E  j=",j," cb(j)=",cb(j)," must be ",j*2.0
         endif
      enddo
      if(ty1%tii.ne.loop)ier=ier+1
      if(ty1%trr.ne.real(loop))ier=ier+1
      if(ty1%tcc.ne.cmplx(loop,loop))ier=ier+1
      write(ss,'(i4.4)')loop
      if(ty1%tss.ne.ss) ier=ier+1
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ty1) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  LASTPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     ty1=",ty1
      endif
      stop
      end
