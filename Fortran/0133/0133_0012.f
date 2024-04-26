      program main
      integer,parameter:: N=100
      integer,parameter:: L=10
      integer,parameter:: S1=1
      integer,parameter:: B1=50
      integer,parameter:: ANS=9749
      integer a(N),b(N),c(N)
      integer,allocatable,dimension(:):: d
      
      a = 1
      b = (/(MOD(i,2*L)+1,i=1,N)/)
      c = (/(MOD(i,L+1)+1,i=1,N)/)

      do i=1,L,5
         a = a + 1
      enddo

      do i=1,L,2
         a(i:B1+i) = a(i:B1+i) + 1
      enddo
      do i=1,L,2
         a(i:B1+i) = a(b(i:B1+i)) + 1
      enddo

      do i=1,L,1
         a(S1:B1) = a(S1:B1) + 1
      enddo
      do i=1,L,1
         a(S1:B1) = a(c(S1:B1)) + 1
      enddo

      do i=1,L,5
         a(b) = a(b) - 1
      enddo
      do i=1,L,5
         a(b) = a(b(c)) - 1
      enddo

      do i=1,L,5
         a(b+i) = a(b+i) - 1
      enddo
      do i=1,L,5
         a(b+i) = a(c(b+i)) - 1
      enddo

      do i=1,L,5
         a(b+c) = a(b+c) + 1
      enddo
      do i=1,L,5
         a(b+c) = a(b(b+c)) + 1
      enddo

      do i=1,2*L,5
         a(b(a)) = a(b(a)) + 1
      enddo

      do i=1,L,2
         allocate(d(1:i))
         d = (/(MOD(j,4)+1,j=1,i)/)
         a(i:2*i) = a(b(i:2*i)) + sum(d(1:i))
         deallocate(d)
      enddo

      do i=1,N
         a(i:N) = a(b(i:N)) + 1
         a(i:N) = a(b(c(i:N))) + 1
         a(i:N) = a(i:N) - 1
         do j=1,N
            a(S1:B1) = a(S1:B1) + 1
            a(j:N) = a(b(j:N)) + 1
            a(i:N) = a(c(i:N)) + 1
         enddo
      enddo

      do i=1,N
         a(i:N) = a(b(i:N)) + 1
         a(S1:B1) = a(S1:B1) + 1
         a(S1:B1) = a(c(S1:B1)) + 1
         do j=1,N
            a(j) = a(b(j)) - 1
         enddo
      enddo

      do i=1,N
         a(i) = a(b(i)) + 1
         do j=1,N
            a(S1:B1) = a(S1:B1) - 1
            a(j:N) = a(b(j:N)) + 1
            a(i:N) = a(c(i:N)) + 1
         enddo
      enddo

      do i=1,N
         a(i:N) = a(i:N) + 1
         do j=1,N
            a(j:N) = a(j:N) - 1
         enddo
      enddo

      do i=1,N
         a(i:N) = a(b(i:N)) + 1
         do j=1,N
            a(j) = a(b(j)) + 1
         enddo
      enddo

      do i=1,N
         a(i) = a(b(i)) - 1
         do j=1,N
            a(j:N) = a(b(j:N)) + 1
         enddo
      enddo

      do i=1,N
         a(i) = a(b(i)) - 1
         do j=1,N
            a(j) = a(j) + 1
         enddo
      enddo
      
      res = 0
      do i=10,N,10
         if (MOD(i,20) .eq. 0) then
            res = res - sum(a(i-9:i))
         else
            res = res + sum(a(i-9:i))
         endif
      enddo

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
