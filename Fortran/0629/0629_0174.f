      real*8 a(11,10),b(11,10),c(11,10),d(10,10)

      data a/1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,
     1       3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,
     2       2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,
     3       1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,
     4       3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,
     5       3,1,2,3,1,2,3,1,2,3/
      data b/3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,
     1       5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,
     2       4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,
     3       3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,
     4       5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,
     5       5,3,4,5,3,4,5,3,4,5/
      data c/110*0/

      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo

      do i=1,10
        do j=1,10
          d(i,j) = i+3
        enddo
      enddo

      print *,c
      print *,d
      end