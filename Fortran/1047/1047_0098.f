      program main
      integer*4 ib(150), ic(150), id, ier
      integer*4 :: loop=150, loop5=5
      integer*8 ih8(5), ii8(5)
      integer*4 ih4(5), ii4(5)
      integer*2 ih2(5), ii2(5)
      integer*1 ih1(5), ii1(5)
      ib = 0
      do i=1,loop5
         ih8(i) = i*1000
         ih4(i) = i*100
         ih2(i) = i*10
         ih2(i) = i
      enddo
!$omp parallel
!$omp do lastprivate(ih8,ih4,ih2,ih1,id)
      do i=1,loop
         id = mod(i,loop5)+1
         ih8(id) = i+100
         ih4(id) = i+50
         ih2(id) = i+10
         ih1(id) = mod(i,127)
         ib(i) = ih8(id)+ih4(id)+ih2(id)+ih1(id)
      enddo
!$omp end do
!$omp end parallel
      ier = 0
      do i=1,loop
         id = mod(i,loop5)+1
         ii8(id) = i+100
         ii4(id) = i+50
         ii2(id) = i+10
         ii1(id) = mod(i,127)
         ic(i) = ii8(id)+ii4(id)+ii2(id)+ii1(id)
      enddo
      do i=1,loop
         if (ib(i).ne.ic(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," ib(i)=",ib(i)," ic(i)=",ic(i)
         endif
      enddo
      do i=1,loop5
         if( ih8(i).ne.ii8(i) .or. ih4(i).ne.ii4(i) .or.
     +       ih2(i).ne.ii2(i) .or. ih1(i).ne.ii1(i) )then
            ier=ier+1
            write(*,*) "E  i=",i," ih8(i)=",ih8(i)," ii8(i)=",ii8(i),
     +                           " ih4(i)=",ih4(i)," ii4(i)=",ii4(i)
            write(*,*) "           ih2(i)=",ih2(i)," ii2(i)=",ii2(i),
     +                           " ih1(i)=",ih1(i)," ii1(i)=",ii1(i)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(ih8,ih4,ih2,ih1,id) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ier=",ier
         write(*,*) "     ih8=",ih8
         write(*,*) "     ii8=",ii8
         write(*,*) "     ih4=",ih4
         write(*,*) "     ii4=",ii4
         write(*,*) "     ih2=",ih2
         write(*,*) "     ii2=",ii2
         write(*,*) "     ih1=",ih1
         write(*,*) "     ii1=",ii1
      endif
      stop
      end

