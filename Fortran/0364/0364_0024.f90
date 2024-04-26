      integer(kind=8)::i08a(11)
      logical(kind=4)::L04a(11)
      integer(kind=4)::res(8),fun01,l,m,n

      i08a = (/(i,i=1,11)/)
      L04a = (/(mod(i,3)/=0,i=1,11)/)
      res  = 0
      j = 0
      l = cos(0.0)*10
      m = sin(0.0)+10
      n = (l+m)/2

      do i=1,10
         i08a(2:11)= i08a(1:10) + 1
      enddo

      do i=1,10
         i08a(2:n+1)= i08a(1:n) - 2
      enddo

      do i=1,10
         n=n+mod(i,11)-i
         i08a(2:n+1)= i08a(1:n) + 3
      enddo

      j=j+1
      do i=1,10
         res(j) = fun01(i08a( : )+1,i08a( : )+0,i08a( : )-1,10,10,10)
      enddo

      j=j+1
      do i=1,10
         n=n+mod(i,11)-i
         res(j) = fun01(i08a( : )+1,i08a( : )+0,i08a(1:n)-1,10,10, n)
      enddo

      j=j+1
      do i=1,10
         n=n+mod(i,11)-i
         res(j) = fun01(i08a( : )+1,i08a(1:n)+0,i08a( : )-1,10, n,10)
      enddo

      j=j+1
      do i=1,10
         n=n+mod(i,11)-i
         res(j) = fun01(i08a(1:n)+1,i08a( : )+0,i08a( : )-1, n,10,10)
      enddo

      j=j+1
      do i=1,10
         n=n+mod(i,11)-i
         res(j) = fun01(i08a( : )+1,i08a(1:n)+0,i08a(1:n)-1,10, n, n)
      enddo

      j=j+1
      do i=1,10
         n=n+mod(i,11)-i
         res(j) = fun01(i08a(1:n)+1,i08a( : )+0,i08a(1:n)-1, n,10, n)
      enddo

      j=j+1
      do i=1,10
         n=n+mod(i,11)-i
         res(j) = fun01(i08a(1:n)+1,i08a(1:n)+0,i08a( : )-1, n, n,10)
      enddo

      j=j+1
      do i=1,10
         n=n+mod(i,11)-i
         res(j) = fun01(i08a(1:n)+1,i08a(1:n)+0,i08a(1:n)-1, n, n, n)
      enddo

      do i=1,10
         where(L04a(1:10))
           i08a(2:11) = i08a(1:10) + 4
         elsewhere
           i08a(2:11) = i08a(1:10) - 5
         endwhere
      enddo

      do i=1,10
         n=n+mod(i,11)-i
         where(L04a(1:10))
           i08a(2:11) = i08a(1:10) - 6
         elsewhere
           i08a(2:n+1) = i08a(1:n) + 7
         endwhere
      enddo

      do i=1,10
         n=n+mod(i,11)-i
         where(L04a(1:10))
           i08a(2:n+1) = i08a(1:n) - 8
         elsewhere
           i08a(2:11) = i08a(1:10) - 9
         endwhere
      enddo

      do i=1,10
         n=n+mod(i,11)-i
         where(L04a(1:n))
           i08a(2:11) = i08a(1:10) + 10
         elsewhere
           i08a(2:11) = i08a(1:10) + 11
         endwhere
      enddo

      do i=1,10
         n=n+mod(i,11)-i
         where(L04a(1:10))
           i08a(2:n+1) = i08a(1:n) + 12
         elsewhere
           i08a(2:n+1) = i08a(1:n) - 13
         endwhere
      enddo

      do i=1,10
         n=n+mod(i,11)-i
         where(L04a(1:n))
           i08a(2:11) = i08a(1:10) - 14
         elsewhere
           i08a(2:n+1) = i08a(1:n) + 15
         endwhere
      enddo

      do i=1,10
         n=n+mod(i,11)-i
         where(L04a(1:n))
           i08a(2:n+1) = i08a(1:n) - 16
         elsewhere
           i08a(2:11) = i08a(1:10) - 17
         endwhere
      enddo
      write(6,*) i08a
      write(6,*) res
      write(6,*) 'PASS'
      stop
      end

      integer function fun01(x,y,z,l,m,n)
      integer(kind=4)::l,m,n
      integer(kind=8)::x(l),y(m),z(n)
      fun01=0
      do i=1,m
         if(x(i) /= y(i)+1 .OR. z(i) /= y(i)-1) fun01 = 1
      enddo
      end
