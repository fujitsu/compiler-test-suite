      program main
      integer a(10),b(10),c(10)

      do 100 i=1,10
         a(i)=i
 100  continue

      i=1
      do 200 while(i.le.10)
         b(i)=i 
         i=i+1
 200  continue

      do 300 i=1,10
         c(i)=i
 300  continue

      print *,a,b,c
      end
