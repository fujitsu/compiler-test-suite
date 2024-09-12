      dimension a(5,5),b(5,5)

      do i=1,5
        a(i,:) = i
        b(i,:) = i + 1
      enddo

      x = 0
      do k=1,5
        do j=1,5
          do i=1,5
            a(i,j) = a(i,j) + 1
            b(i,j) = b(i,j) + 1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          enddo
        enddo
      enddo

      print '(f11.8)',x
      end
