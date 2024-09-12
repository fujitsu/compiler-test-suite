      integer a(5,5,5),b(5,5,5)
      data a/125*3/,b/125*2/
      i=0
      do k=1,5
        do j=1,5
          b(2,j,k) = i
          do i=1,5
            a(i,j,k)=b(i,j,k) + 3
          enddo
        enddo
      enddo
      print *,a
      end
