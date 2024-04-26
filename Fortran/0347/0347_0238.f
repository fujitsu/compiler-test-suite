      program main
      real*8  a(20,20,20),b(20,20,20),c(20,20,20)
      data  a,b/8000*1.d0,8000*2.d0/,nn/15/
      data  c/8000*3.d0/
      do 10 i=1,nn
       a(i,nn,nn) = 21.- float(i)
       do 10 j=1,nn
        do 20 k=2,nn
         c(i,j,k) = b(i+1,j,k)-a(i,j,k)
  20   continue
       a(i,j,2) = c(i,1,1)*float(i)
  10  continue
      write(6,*) (((a(i,j,k),i=1,10),j=1,15),k=2,15,13)
      write(6,*) (((c(i,j,k),i=1,10),j=1,10),k=1,10)
      stop
      end
