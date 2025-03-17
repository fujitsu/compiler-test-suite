      program main
      integer*4 ia, ib(150), ic(150), ier
      integer*4 :: loop=150, loop5=5
      integer*8 ih8(5), ii8(5)
      integer*2 ih2(5), ii2(5)
      ib = 0
      do i=1,loop5
         ih8(i) = i*2
         ih2(i) = i
      enddo
!$omp parallel
!$omp do lastprivate(ia,ih8,ih2)
      do i=1,loop
         ia = mod(i,loop5)+1
         ih8(ia) = i+100
         ih2(ia) = i+50
         ib(i) = ih8(ia)+ih2(ia)
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
         ia = mod(i,loop5)+1
         ii8(ia) = i+100
         ii2(ia) = i+50
         ic(i) = ii8(ia)+ii2(ia)
         if (ib(i).ne.ic(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," ib(i)=",ib(i)," ic(i)=",ic(i)
         endif
      enddo
      do i=1,loop5
         if (ih8(i).ne.ii8(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," ih8(i)=",ih8(i)," ii8(i)=",ii8(i)
         endif
         if (ih2(i).ne.ii2(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," ih2(i)=",ih2(i)," ii2(i)=",ii2(i)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ia,ih8,ih2) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ier=",ier
         write(*,*) "     ih8=",ih8
         write(*,*) "     ii8=",ii8
         write(*,*) "     ih2=",ih2
         write(*,*) "     ii2=",ii2
      endif
      stop
      end

