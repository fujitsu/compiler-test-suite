!
!
!
!
!
!
      program main
      integer*4 ier
      complex*8 cb(50)
      integer*4 :: loop=50
      character*4 ss
      type tt1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (tt1) ty1
!
      cb = (0,0)
      ty1 = tt1(0, 0., (0.,0.), 'str')
!
!$omp parallel
!$omp do private(ty1,ss)
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
      if(ty1%tii.ne.0) ier=ier+1
      if(ty1%trr.ne.0.0) ier=ier+1
      if(ty1%tcc.ne.(0.0,0.0)) ier=ier+1
      if(ty1%tss.ne.'str') ier=ier+1
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ty1) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         write(*,*) "     ty1=",ty1
      endif
      stop
      end
