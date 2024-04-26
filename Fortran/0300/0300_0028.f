      real*8 a(20,20),b(20,20)

      do i=1,20
        do j=1,20
          b(i,j) = i + j
        enddo
      enddo

      i=1
      do k=1,3
        l=b(i,1)
        do i=1,10
          a(i,1) =  1
        enddo
      enddo
      print *,a(1,1),l
      print *,b(1,1)
      end
