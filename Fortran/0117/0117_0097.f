      integer a(100,100,100),b(100,100,100),c(100,100,100)
      b = 1
      a = 1
      c = 1
      do 10 i=1,10
         do 20 j=1,10
            do 30 k=1,10
               a(i+0,j+5,k+0)  = b(i,j,k)
               c(i,j,k)        = a(i+10,j+0,k+30)
 30         continue
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            do 300 k=1,10
               write(6,*) a(i+0,j+5,k+0)
               write(6,*) c(i,j,k)
 300        continue
 200     continue
 100  continue
      stop
      end
