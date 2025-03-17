      program main
      integer*4 ib(150), ic, ier
      integer*4 :: loop=150, loop5=5
      real*16,allocatable :: rr16(:)
      real*8,allocatable :: rr8(:)
      real*4,allocatable :: rr4(:)

      ib = 0
      ier = 0
      allocate(rr16(loop5),rr8(loop5),rr4(loop5))
      do j=1, loop5
          rr16(j) = j*8
          rr8(j) = j*4
          rr4(j) = j*2
      end do

!$omp parallel private(ic,rr16,rr8,rr4)
!$    allocate(rr16(loop5),rr8(loop5),rr4(loop5))
!$omp do
      do j=1, loop
         ic=mod(j,loop5)+1
         rr16(ic) = j*20
         rr8(ic) = j*10
         rr4(ic) = j*5
         ib(j) = rr16(ic)+rr8(ic)+rr4(ic)
      end do
!$omp end do
!$    deallocate(rr16,rr8,rr4)
!$omp end parallel

      do j=1, loop5
         if( rr16(j).ne.j*8 .or. rr8(j).ne.j*4 .or. rr4(j).ne.j*2 )then
            ier=ier+1
            write(*,*) "E  j=",j," rr16(j)=",rr16(j)
            write(*,*) "        rr8(j)=",rr8(j)," rr4(j)=",rr4(j)
         endif
      end do
      do j=1, loop
         if (ib(j).ne.j*35) then
            ier=ier+1
            write(*,*) "E  j=",j," ib(j)=",ib(j)," must be ",j*35
         endif
      enddo
      write(*,*) "----- parallel"
      write(*,*) "      do private(ic,rr16,rr8,rr4) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG   PRIVATE clause is not active"
         write(*,*) "     ier=",ier
         do i=1,loop5
            write(*,*) "     i=",i," rr16(i)=",rr16(i)
            write(*,*) "          rr8(i)=",rr8(i)," rr4(i)=",rr4(i)
         enddo
      endif
      deallocate(rr16,rr8,rr4)

      stop
      end
