      program main
      integer*4 ib(150), ic, ier
      integer*4 :: loop=150, loop5=5
      integer*8 ii8(5)
      integer*4 ii4(5)
      integer*2 ii2(5)
      integer*1 ii1(5)
      ib = 0
      ier = 0
      do j=1, loop5
          ii8(j) = j*8
          ii4(j) = j*4
          ii2(j) = j*2
          ii1(j) = j*1
      end do
!$omp parallel
!$omp do private(ic,ii8,ii4,ii2,ii1)
      do j=1, loop
         ic=mod(j,loop5)+1
         ii8(ic) = j*20
         ii4(ic) = j*10
         ii2(ic) = j*5
         ii1(ic) = mod(j*2,127)
         ib(j) = ii8(ic)+ii4(ic)+ii2(ic)+ii1(ic)
      end do
!$omp end do
      do j=1, loop5
         if( ii8(j).ne.j*8 .or. ii4(j).ne.j*4 .or.
     +       ii2(j).ne.j*2 .or. ii1(j).ne.j*1 )then
!$omp atomic
            ier=ier+1
            write(*,*) "E  j=",j," ii8(j)=",ii8(j)," ii4(j)=",ii4(j),
     +                           " ii2(j)=",ii2(j)," ii1(j)=",ii1(j)
         endif
      end do
!$omp end parallel
      do j=1, loop
         if (ib(j).ne.j*35+mod(j*2,127)) then
            ier=ier+1
            write(*,*) "E  j=",j," ib(j)=",ib(j)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ic,ii8,ii4,ii2,ii1) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ier=",ier
         write(*,*) "     ii8=",ii8
         write(*,*) "     ii4=",ii4
         write(*,*) "     ii2=",ii2
         write(*,*) "     ii1=",ii1
      endif
      stop
      end
