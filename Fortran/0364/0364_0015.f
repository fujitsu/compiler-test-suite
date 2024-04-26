      integer i,j,k 
      integer x,y,z
      real*4 st,et
      real*4 a(400,400),b(400,400),c(400,400)  
      x=1
      y=400
      z=1
      do 10 i=1,400
         do 10 j=1,400
 10         a(j,i) = 3.0
            
      do 20 i=1,400
         do 20 j=1,400
 20         b(j,i) = 1.0

      do 30 i=x,y
      do 30 j=1,400
            c(i,j) = 0.0
      do 30 k=1,400
            c(i,j) = c(i,j) + a(i,k)*b(k,j)
 30   continue
      write(6,*) 'result '
      do 40 i=1,4
      do 40 j=1,4
 40   write(6,*) i,j,c(j,i)
      end
