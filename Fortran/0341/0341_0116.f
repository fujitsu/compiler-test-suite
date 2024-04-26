      implicit integer*4 (e-s)
      real*8 a(6,6,6),b(6,6,6)

      do 10 i=1,6
        a(i,:,:) = i
        b(i,:,:) = 7-i
10    continue
c
      start = 1
      end = 6
c
      do i=1,6,2
        do j=1,6,1
          do k=1,end+1-1,2
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          enddo
        enddo
      enddo
c
      do i=start+1,6,2
        do j=1,6,1
          do k=1,end+1-1,2
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          enddo
        enddo
      enddo
c
      do i=1,6,2
        do j=1,6,1
          do k=1,end+1-1,2
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          enddo
        enddo
      enddo
c
      do i=1,6,2
        do j=1,6,1
          do k=1,end+1-1,2
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          enddo
        enddo
      enddo
c
      do i=1,6,2
        do j=1,6,1
          do k=1,end+1-1,2
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          enddo
        enddo
      enddo
c
      do i=1,6,2
        do j=1,6,1
          do k=1,end+1-1,2
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          enddo
        enddo
      enddo

      print *,a
      end
