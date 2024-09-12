      real*8 a(10,10),b(10,10),c(10,10)
      data a/100*1/
      data b/100*2/
      data c/100*0/

      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo

      print *,c
      end
