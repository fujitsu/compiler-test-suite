      program main
      integer*4 ic, ier
      integer*4 :: loop=150, loop5=5
      complex*16 cb(150)
      complex*32,allocatable :: cc32(:)
      complex*16,allocatable :: cc16(:)
      complex*8,allocatable :: cc8(:)
      cb = 0
      ier = 0
      allocate(cc32(loop5),cc16(loop5),cc8(loop5))
      do j=1, loop5
          cc32(j) = cmplx(j*8,j*4)
          cc16(j) = cmplx(j*4,j*2)
          cc8(j) = cmplx(j*2,j)
      end do
!$omp parallel private(ic,cc32,cc16,cc8)
!$    allocate(cc32(loop5),cc16(loop5),cc8(loop5))
!$omp do
      do j=1, loop
         ic=mod(j,loop5)+1
         cc32(ic) = cmplx(j*20,j*10)
         cc16(ic) = cmplx(j*10,j*5)
         cc8(ic) = cmplx(j*5,j)
         cb(j) = cc32(ic)+cc16(ic)+cc8(ic)
      end do
!$omp end do
!$    deallocate(cc32,cc16,cc8)
!$omp end parallel
      do j=1,loop5
         if( cc32(j).ne.cmplx(j*8,j*4) )then
            ier=ier+1
            write(*,*) "E  j=",j," cc32(j)=",cc32(j)
         endif
         if( cc16(j).ne.cmplx(j*4,j*2) )then
            ier=ier+1
            write(*,*) "E  j=",j," cc16(j)=",cc16(j)
         endif
         if( cc8(j).ne.cmplx(j*2,j) )then
            ier=ier+1
            write(*,*) "E  j=",j," cc8(j)=",cc8(j)
         endif
      end do
      do j=1,loop
         if (cb(j).ne.cmplx(j*35,j*16)) then
            ier=ier+1
            write(*,*) "E  j=",j," cb(j)=",cb(j)," must be ",
     +                                            cmplx(j*35,j*16)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ic,cc32,cc16,cc8) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         do i=1,loop5
            write(*,*) "     i=",i," cc32(i)=",cc32(i)
            write(*,*) "          cc16(i)=",cc16(i)
            write(*,*) "          cc8(i)=",cc8(i)
         enddo
         write(*,*) "     ier=",ier
      endif
      deallocate(cc32,cc16,cc8)
      stop
      end
