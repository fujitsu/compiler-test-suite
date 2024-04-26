      integer a(1000,1000),b(1000,1000),c(1000,1000),s/0/
      data a/1000000*2/
      data b/1000000*3/
      data c/1000000*4/
      do i=1,1000
        do j=1,1000
          c(i,j)=1
          do k=1,1000
            s=a(i,k)+b(i,j)
          enddo
        enddo
      enddo
      print *,s
      print *,c(1,10),c(10,100),c(100,1000)
      end
