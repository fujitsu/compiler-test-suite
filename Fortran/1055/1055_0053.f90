!
!
!
!
!
!
      program main
      integer*4 ic, ier
      complex*8 cb(50)
      character*4 ss
      integer*4 :: loop=50, loop5=5
      type tt1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (tt1) ty1(5)
!
      cb = (0,0)
      do j=1, loop5
         write(ss,'(i4.4)') j
         ty1(j) = tt1(j, real(j), cmplx(j,j), ss)
      enddo
!
!$omp parallel
!$omp do private(ty1,ic,ss)
      do j=1, loop
         write(ss,'(i4.4)')(-1)*j
         ic = mod(j,loop5)+1
         ty1(ic) = tt1(j*(-1), real(j*(-1)), cmplx(j*(-1),j*(-1)), ss)
         cb(j) = cmplx(real(ty1(ic)%tii),ty1(ic)%trr) + ty1(ic)%tcc
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
          if (cb(j).ne.cmplx(j*(-2),j*(-2))) then
             ier=ier+1
             write(*,*) "E  j=",j," cb(j)=",cb(j)," must be ",j*2.0
          endif
      enddo
      do j=1, loop5
         if(ty1(j)%tii.ne.j) ier=ier+1
         if(ty1(j)%trr.ne.j) ier=ier+1
         if(ty1(j)%tcc.ne.cmplx(j,j)) ier=ier+1
         write(ss,'(i4.4)')j
         if(ty1(j)%tss.ne.ss) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ty1,ic) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     ier=",ier
         do j=1, loop5
            write(*,*) "     j=",j," ty1(j)=",ty1(j)
         enddo
      endif
      stop
      end
