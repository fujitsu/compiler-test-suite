      program main
      integer*4 ia(90,90), ib(90,90,90)
      integer*4 ie(90), ier
      integer*4 :: loop=90
      ia = 0
      ib = 0
      do i=1, loop
          ie(i) = mod(i*(-1)**(i-(i/2)*2),9)
          if(ie(i).ge.0) ie(i)=ie(i)+1
      end do
!$omp parallel
      do j=1, loop
!$omp do
          do i=1, loop
              ia(i,j) = i*j-ie(j)
          end do
!$omp end do
          do i=1, loop
!$omp do
              do k=1, loop
                  ib(i,j,k) = i*k+j*ie(i)
              end do
!$omp end do
          end do
      end do
!$omp end parallel
      ier = 0
      do j=1, loop
          do i=1, loop
              if ( ia(i,j) .ne. i*j-ie(j) ) ier=ier+1
          end do
          do i=1, loop
              do k=1, loop
                  if ( ib(i,j,k) .ne. i*k+j*ie(i) ) ier=ier+1
              end do
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
