      real*8 a(11),b(10),c(10)
      data a/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0/
      data b,c/10*0.0,10*10.0/
      do i=1,10
       b(i)=a(i)+a(i+1)
       c(i)=b(i)+c(i)
      enddo
      print *,b,c
      end