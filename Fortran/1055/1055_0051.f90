!
!
!
!
!
!
      program main
      integer*4 ia(50), ier
      integer*4 :: loop=50
      integer*4, target :: it1(50)
      integer*4, pointer :: pt1
!
      do j=1,loop
         it1(j)=mod(j*11,21)
      enddo
!
!$omp parallel
!$omp do private(pt1)
      do j=1, loop
         pt1=>it1(j)
         ia(j)=pt1
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do j=1, loop
          if (ia(j).ne.it1(j)) then
             ier=ier+1
             write(*,*) "E  j=",j," ia(j)=",ia(j)," it1(j)=",it1(j)
          endif
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do private(pt1) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  PRIVATE clause is not active!"
         write(*,*) "     ier=",ier
      endif
      stop
      end
