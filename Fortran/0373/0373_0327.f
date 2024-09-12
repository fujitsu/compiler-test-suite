      real*8 a(2048),b(2047),c(2047)
      data b/2047*0/,c/2047*1/
      a = (/(i,i=1,2048)/)
      do i=1,2047
       b(i)=a(i)+a(i+1)
       c(i)=b(i)+c(i)
      enddo
      print *,b,c
      end
