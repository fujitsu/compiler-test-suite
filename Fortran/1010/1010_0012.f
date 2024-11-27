c
c
c
c
c
c
      program main
      integer*4 ia, ib(50), ier
      integer*4 :: loop=50, loop5=5
      integer*8 mi8(5)
      integer*1 mi1(5)
      common /com1/ mi8, mi1
c
      ib = 0
      ier = 0
      do j=1, loop5
          mi8(j) = j+10
          mi1(j) = j
      end do
c
!$omp parallel
!$omp do private(/com1/,ia)
      do j=1, loop
         ia=mod(j,loop5)+1
         mi8(ia) = j*10
         mi1(ia) = j*2
         ib(j) = mi8(ia)+mi1(ia)
      end do
!$omp end do
      do j=1, loop5
         if(mi8(j).ne.j+10 .or. mi1(j).ne.j)then
!$omp atomic
            ier=ier+1
            write(*,*) "E  j=",j," mi8(j)=",mi8(j)," mi1(j)=",mi1(j)
         endif
      end do
!$omp end parallel
c
      do j=1, loop
         if (ib(j).ne.j*12) then
            ier=ier+1
            write(*,*) "E  j=",j," ib(j)=",ib(j)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(/com1/,ia) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     mi8=",mi8
         write(*,*) "     mi1=",mi1
         write(*,*) "     ib=",ib
      endif
      stop
      end
