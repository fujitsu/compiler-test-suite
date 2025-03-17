      program main
      integer*4 ia(150,150), ib(150,150)
      integer*4 ie(150), ier
      integer*4 :: loop=150
      ia = 0
      ib = 0
      do i=1, loop
          ie(i) = mod(13*i/11+17*i*(-1)**(i-(i/2)*2),9)
          if(ie(i).ge.0) ie(i)=ie(i)+1
      end do
!$omp parallel
      do j=1, loop
!$omp do
          do i=1, loop
              ia(i,j) = i*j-ie(j)
          end do
!$omp end do
!$omp do
          do i=1, loop
              ib(i,j) = i+j*ie(i)
          end do
!$omp end do
      end do
!$omp end parallel
      ier = 0
      do j=1, loop
          do i=1, loop
              if ( ia(i,j) .ne. i*j-ie(j) ) ier=ier+1
          end do
          do i=1, loop
              if ( ib(i,j) .ne. i+j*ie(i) ) ier=ier+1
          end do
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do ordered ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  DO loop calculationot incorrect!"
         write(*,*) "     error count=", ier
      end if
      stop
      end
