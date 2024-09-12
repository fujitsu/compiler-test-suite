      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*1.,400*2.,400*3./
      data  nn/18/

      do 40 i=2,nn
         b(i,i)=c(i,i)
         do 40 j=2,i
            c(i+1,j)=c(i,j)
 40      continue

         do 60 i=2,10
            do 50 j=2,10
 50         continue
 60      continue
         write(6,*) a
         write(6,*) b
         write(6,*) c
         stop
         end
