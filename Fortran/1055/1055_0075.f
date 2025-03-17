      program main
      integer*4 ia(150,150), ib(150,150)
      integer*4 ic(150), id(150), ie(150), ier
      integer*4 :: loop=150
      ia = 0
      ib = 0
      ic = 0
      do i=1, loop
          ie(i) = mod(13*i/11+17*i*(-1)**(i-(i/2)*2),9)
          if(ie(i).ge.0) ie(i)=ie(i)+1
      end do
!$omp parallel
!$omp do ordered
      do j=1, loop
          do i=1, loop
              ia(i,j) = i*j-ie(j)
          end do
          do i=j, loop
              ib(i,j) = i+j*ie(i)
          end do
!$omp ordered
          do i=1, j
              do k=j,loop
                  ic(k) = ic(k)+i+j*k+ie(j)
              end do
          end do
!$omp end ordered
      end do
!$omp end do
!$omp end parallel
      id = 0
      ier = 0
      do j=1, loop
          do i=1, loop
              if ( ia(i,j) .ne. i*j-ie(j) ) ier=ier+1
          end do
          do i=j, loop
              if ( ib(i,j) .ne. i+j*ie(i) ) ier=ier+1
          end do
      enddo
      do j=1, loop
          do i=1, j
              do k=j,loop
                  id(k) = id(k)+i+j*k+ie(j)
              end do
          end do
      enddo
      do j=1, loop
          if ( ic(j) .ne. id(j) ) ier=ier+1
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
