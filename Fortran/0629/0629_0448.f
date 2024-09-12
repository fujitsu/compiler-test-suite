      integer,parameter :: N = 200
      integer ary(N,N)
      integer ary2(N)

      do k=1,N
      do j=1,N
        ary(j,k) = k
        ary2(j) = j + ary(j,k)
      enddo
      enddo

      print *, ary2(1:10)
      end
