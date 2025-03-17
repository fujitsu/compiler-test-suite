      program main
      integer*4 ia, ib(150), ic(150), ier
      integer*4 :: loop=150, loop5=5
      integer*4 ih(5), ii(5)
      ib = 0
      do i=1,loop5
         ih(i) = i*2
      enddo
!$omp parallel
!$omp do lastprivate(ia,ih)
      do i=1,loop
         ia = mod(i,loop5)+1
         ih(ia) = i+100
         ib(i) = ih(ia)
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
         ia = mod(i,loop5)+1
         ii(ia) = i+100
         ic(i) = ii(ia)
         if (ib(i).ne.ic(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," ib(i)=",ib(i)," ic(i)=",ic(i)
         endif
      enddo
      do i=1,loop5
         if (ih(i).ne.ii(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," ih(i)=",ih(i)," ii(i)=",ii(i)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ia,ih) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ier=",ier
         write(*,*) "     ih=",ih
         write(*,*) "     ii=",ii
      endif
      stop
      end

