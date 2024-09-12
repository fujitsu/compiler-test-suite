      real a(5,5),b(5,5),c(5,5)
      data a/1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,
     1       1,2,3,4,5,1,2,3,4,5/
      data b/2,3,4,5,6,2,3,4,5,6,2,3,4,5,6,
     1       2,3,4,5,6,2,3,4,5,6/
      data c/25*0./
      integer s/0/
      do l=1,5
        s=s+1
      do i=1,5
        do j=1,5
          do k=1,5
            c(i,j) = c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo
      enddo

      print *,'## c ## ',c
      print *,'## s ## ',s
      end
