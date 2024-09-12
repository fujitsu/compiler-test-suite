      real*4 a(10,10),b(10,10),c(10,10)
      data a/100*2/
      data b/100*3/
      data c/100*4/

      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)-a(i,k)*b(k,j)
          enddo
        enddo
      enddo
      print *,c
      end
