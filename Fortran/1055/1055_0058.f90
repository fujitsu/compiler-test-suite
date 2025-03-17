!
!
!
!
!
!
      program main
      integer*4 ic, ier
      complex*8 cb(50), cc
      integer*4 :: loop=50, loop5=5
      type tt1
         integer*4   tii(5)
         real*4      trr(5)
         complex*8   tcc(5)
      end type
      type (tt1) ty1
!
      cb = (0,0)
      do i=1,loop5
         ty1%tii(i) = i
         ty1%trr(i) = (-1)*i
         ty1%tcc(i) = cmplx(i,(-1)*i)
      enddo
!
!$omp parallel
!$omp do firstprivate(ty1,ic)
      do i=1, loop
         ic=mod(i,loop5)+1
         cb(i) = cmplx(real(ty1%tii(ic)),ty1%trr(ic)) + ty1%tcc(ic)
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do i=1, loop
         ic=mod(i,loop5)+1
         cc = cmplx(real(ty1%tii(ic)),ty1%trr(ic)) + ty1%tcc(ic)
         if (cb(i).ne.cc) then
            ier=ier+1
            write(*,*) "E  i=",i," cb(i)=",cb(i)," must be ",cc
         endif
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ty1,ic) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         write(*,*) "     ty1%tii=",ty1%tii
         write(*,*) "     ty1%trr=",ty1%trr
         write(*,*) "     ty1%tcc=",ty1%tcc
         write(*,*) "     ier=",ier
      endif
      stop
      end
