
      program main

      integer, parameter:: N=4
      integer, parameter:: M=100
      complex*8 a(M)

      a = (0.0, 0.0)

      do i=1,N
         do j=1,N
            a(i*j) = a(i+j) + 1.0
         enddo
      enddo

      do i=1,N
         do j=1,N
            do k=1,N
               a(i+j/k+k) = a(i+j/k+k) + 1.0
            enddo
         enddo
      enddo

      do i=1,N
         do j=1,N
            do k=1,N
               a(i+j/k) = a(i+j*k) + 1.0
            enddo
         enddo
      enddo

      do i=1,N
         do j=1,N
            do k=1,N
               a(k+mod(i,j)) = a(k+mod(i,j)) + 1.0
            enddo
         enddo
      enddo

      if ((real(sum(a)).eq.110.0)
     &     .and.(aimag(sum(a)).eq.0.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
