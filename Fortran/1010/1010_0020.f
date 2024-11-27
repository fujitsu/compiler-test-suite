c
c
c
c
c
c
      program main
      integer*4 ia, ib(150), ic(150), ier
      integer*4 :: loop=150, loop5=5
      integer*4 mi4(5), ii4(5)
      integer*2 mi2(5), ii2(5)
      common /com1/ mi4, mi2
c
      ib = 0
      do i=1,loop5
         mi4(i) = i*2
         mi2(i) = i
      enddo
c
!$omp parallel
!$omp do lastprivate(/com1/,ia)
      do i=1,loop
         ia = mod(i,loop5)+1
         mi4(ia) = i+100
         mi2(ia) = i+50
         ib(i) = mi4(ia)+mi2(ia)
      enddo
!$omp end do
!$omp end parallel
c
      ier = 0
      do i=1,loop
         ia = mod(i,loop5)+1
         ii4(ia) = i+100
         ii2(ia) = i+50
         ic(i) = ii4(ia)+ii2(ia)
         if (ib(i).ne.ic(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," ib(i)=",ib(i)," ic(i)=",ic(i)
         endif
      enddo
      do i=1,loop5
         if (mi4(i).ne.ii4(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," mi4(i)=",mi4(i)," ii4(i)=",ii4(i)
         endif
         if (mi2(i).ne.ii2(i)) then
            ier=ier+1
            write(*,*) "E  i=",i," mi2(i)=",mi2(i)," ii2(i)=",ii2(i)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do lastprivate(/com1/,ia) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ier=",ier
         write(*,*) "     mi4=",mi4
         write(*,*) "     ii4=",ii4
         write(*,*) "     mi2=",mi2
         write(*,*) "     ii2=",ii2
      endif
      stop
      end

