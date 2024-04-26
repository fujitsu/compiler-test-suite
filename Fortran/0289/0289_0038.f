      program main
      real*4 a(10),b(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      do 10 i=1,10
   10  call sub(a(i),fun(b(i)),i)
      do 20 i=1,10
       if (a(i)-b(i)) 99,20,99
   20  continue
      print *,'*** ok ***'
      stop
   99 write(6,100) '*** ng ***'
     1            ,(a(i),i=1,10),(b(i),i=1,10)
  100 format(1h ,a18,/1h ,'a=',2(1h ,5e15.7/),1h ,'b=',2(1h ,5e15.7/))
      end
      subroutine sub(x,y,n)
      real*4 x(n:10),y
      do 10 i=n,10
       x(i)=y
   10  continue
      return
      end
      function fun(y)
      fun=y
      return
      end
