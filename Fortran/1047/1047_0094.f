      program main
      integer*4 ia, ib(50), ic(50), ier
      integer*4 :: loop=50, loop5=5
      integer*8 ii8(5)
      integer*4 ii4(5)
      integer*2 ii2(5)
      integer*1 ii1(5)
      ib = 0
      ic = 0
      do i=1,loop5
         ii8(i) = i*1000
         ii4(i) = i*100
         ii2(i) = i*10
         ii1(i) = i*1
      enddo
!$omp parallel
!$omp do firstprivate(ii8,ii4,ii2,ii1) private(ia)
      do i=1,loop
         ia=mod(i,5)+1
         ib(i) = ii8(ia)+ii4(ia)+ii2(ia)+ii1(ia)
      enddo
!$omp end do
!$omp end parallel
      do i=1,loop
         ia=mod(i,5)+1
         ic(i) = ii8(ia)+ii4(ia)+ii2(ia)+ii1(ia)
      enddo
      ier = 0
      do i=1,loop
         if (ib(i).ne.ic(i)) then
            write(*,*) "i=",i," ib(i)=",ib(i)," ic(i)=",ic(i)
            ier=ier+1
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(ia)"
      write(*,*) "         firstprivate(ii8,ii4,ii2,ii1) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ic=",ic
         write(*,*) "     ier=",ier
         write(*,*) "     ii8=",ii8
         write(*,*) "     ii4=",ii4
         write(*,*) "     ii2=",ii2
         write(*,*) "     ii1=",ii1
      endif
      stop
      end

