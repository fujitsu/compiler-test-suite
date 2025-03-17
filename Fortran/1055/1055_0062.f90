!
!
!
!
!
!
      program main
      integer*4 ic, ier
      complex*8 cb(50), cd(50)
      character*4 ss
      integer*4 :: loop=50, loop5=5
      type tt1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (tt1) ty1(5), ty2(5)
!
      cb = (0,0)
      cd = (0,0)
      ty1 = tt1(7, 3.5, (1.9,8.1), 'str')
!
!$omp parallel
!$omp do lastprivate(ty1) private(ic,ss)
      do j=1, loop
         ic=mod(j,loop5)+1
         write(ss,'(i4.4)')j
         ty1(ic) = tt1(j, (-1.0)*j, cmplx(j,(-1)*j), ss)
         cb(j) = cmplx(real(ty1(ic)%tii),ty1(ic)%trr) + ty1(ic)%tcc
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
         ic=mod(j,loop5)+1
         write(ss,'(i4.4)')j
         ty2(ic) = tt1(j, (-1.0)*j, cmplx(j,(-1)*j), ss)
         cd(j) = cmplx(real(ty2(ic)%tii),ty2(ic)%trr) + ty2(ic)%tcc
      enddo
      do j=1, loop
         if (cb(j).ne.cd(j)) then
            ier=ier+1
            write(*,*) "E  j=",j," cb(j)=",cb(j)," cd(j)=",cd(j)
         endif
      enddo
      do j=1, loop5
         if(ty1(j)%tii.ne.ty2(j)%tii) ier=ier+1
         if(ty1(j)%trr.ne.ty2(j)%trr) ier=ier+1
         if(ty1(j)%tcc.ne.ty2(j)%tcc) ier=ier+1
         if(ty1(j)%tss.ne.ty2(j)%tss) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ty1) private(ic) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  LASTPRIVATE clause is not active!"
         do j=1, loop5
            write(*,*) "     j=",j," ty1(j)=",ty1(j)
            write(*,*) "           ty2(j)=",ty2(j)
         enddo
         write(*,*) "     ier=",ier
      endif
      stop
      end
