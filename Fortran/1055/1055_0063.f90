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
      type (tt1) ty1, ty2
!
!$omp parallel
!$omp do lastprivate(ty1,ic)
      do i=1, loop
         ic=mod(i,loop5)+1
         ty1%tii(ic) = i
         ty1%trr(ic) = (-1)*i
         ty1%tcc(ic) = cmplx(i,(-1)*i)
         cb(i) = cmplx(real(ty1%tii(ic)),ty1%trr(ic)) + ty1%tcc(ic)
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do i=1, loop
         ic=mod(i,loop5)+1
         ty2%tii(ic) = i
         ty2%trr(ic) = (-1)*i
         ty2%tcc(ic) = cmplx(i,(-1)*i)
         cc = cmplx(real(ty2%tii(ic)),ty2%trr(ic)) + ty2%tcc(ic)
         if (cb(i).ne.cc) then
            ier=ier+1
            write(*,*) "E  i=",i," cb(i)=",cb(i)," must be ",cc
         endif
      enddo
      do i=1, loop5
         if(ty1%tii(ic).ne.ty2%tii(ic)) ier=ier+1
         if(ty1%trr(ic).ne.ty2%trr(ic)) ier=ier+1
         if(ty1%tcc(ic).ne.ty2%tcc(ic)) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ty1,ic) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  LASTPRIVATE clause is not active!"
         write(*,*) "     ty1%tii=",ty1%tii
         write(*,*) "     ty2%tii=",ty2%tii
         write(*,*) "     ty1%trr=",ty1%trr
         write(*,*) "     ty2%trr=",ty2%trr
         write(*,*) "     ty1%tcc=",ty1%tcc
         write(*,*) "     ty2%tcc=",ty2%tcc
         write(*,*) "     ier=",ier
      endif
      stop
      end
