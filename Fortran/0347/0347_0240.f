      program main
      real*4  a(10,10,10,10),b(10,10,10,10),c(10,10,10),d(10,10,10)
      data  a,b/10000*1.0,10000*2.0/,nn/9/
      data  c,d/1000*3.0,1000*4.0/
      do 10 l=2,nn
       do 20 k=2,nn
         d(nn,k,l)=c(2,k+1,l)-float(l)
         do 30 j=2,nn
           c(j,k,l) = d(j,k,l)
           a(1,j,k,l) = c(j+1,k,l)+d(j-1,k,l)
           do 30 i=1,nn
            a(i,j,k,l)=a(i+1,j,k,l)+b(i,j,k,l)
            b(i,j,k,l)=b(i+1,j,k,l)*2.
  30     continue
         c(2,k,l)=float(k)
  20   continue
  10  continue
      write(6,*) ((((a(i,j,k,l),i=1,5),j=1,5),k=1,5),l=1,5)
      write(6,*) ((((b(i,j,k,l),i=1,5),j=1,5),k=1,5),l=1,5)
      write(6,*) (((c(i,j,k),i=1,10),j=1,10),k=1,10)
      write(6,*) (((d(i,j,k),i=1,10),j=1,10),k=1,10)
      stop
      end
