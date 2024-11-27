c
c
c
c
c
c
      program main
      integer*4 ib(50), ier
      integer*4 :: loop=50
      integer*8 mi8
      integer*4 mi4
      integer*2 mi2
      integer*1 mi1
      common /com1/ mi8, mi4, mi2, mi1
c
      mi8 = 99
      ib = 0
      ier = 0
c
!$omp parallel
!$omp do private(/com1/)
      do j=1, loop
          mi8 = j
          mi4 = j
          mi2 = j
          mi1 = j
          ib(mi1) = mi8+mi4+mi2+mi1
      end do
!$omp end do
      if(mi8.ne.99)then
!$omp atomic
          ier=ier+1
      endif
!$omp end parallel
c
      do j=1, loop
          if (ib(j).ne.j*4) then
             ier=ier+1
             write(*,*) "E  j=",j," ib(j)=",ib(j)," must be ",j*4
          endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do private(/com1/) ------"
      if(mi8.eq.99 .and. ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     mi8=",mi8, "  It must be 99"
         write(*,*) "     ier=",ier
         write(*,*) "     ib=",ib
      endif
      stop
      end
