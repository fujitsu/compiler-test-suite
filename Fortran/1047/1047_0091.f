      program main
      integer*4 ib(50), ic, ier
      integer*4 :: loop=50, loop5=5
      integer*8 ia8(5)
      integer*1 ia1(5)
      ib = 0
      ier = 0
      do j=1, loop5
          ia8(j) = j+10
          ia1(j) = j
      end do
!$omp parallel
!$omp do private(ic,ia8,ia1)
      do j=1, loop
         ic=mod(j,loop5)+1
         ia8(ic) = j*10
         ia1(ic) = j*2
         ib(j) = ia8(ic)+ia1(ic)
      end do
!$omp end do
      do j=1, loop5
         if(ia8(j).ne.j+10 .or. ia1(j).ne.j)then
!$omp atomic
            ier=ier+1
            write(*,*) "E  j=",j," ia8(j)=",ia8(j)," ia1(j)=",ia1(j)
         endif
      end do
!$omp end parallel
      do j=1, loop
         if (ib(j).ne.j*12) then
            ier=ier+1
            write(*,*) "E  j=",j," ib(j)=",ib(j)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ic,ia8,ia1) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     ia8=",ia8
         write(*,*) "     ia1=",ia1
         write(*,*) "     ib=",ib
      endif
      stop
      end
