      program main
      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/400*3.,400*2.,400*1./,nn/15/,it1/1/
      rx=1.1
      do 10 i=1,nn
       do 10 j=2,nn
        a(i,1)=a(it1,1)*b(i,j)
        rx=rx*c(i,j)
 10   continue
      c(nn,nn)=rx
      do 20 i=1,nn
       do 20 j=2,nn
        b(j,1)=b(j-1,1)*a(i,j)
        rx=rx*c(i,j)
 20   continue
      c(1,1)=rx
      write(6,*) ' a=',a
      write(6,*) ' b=',b
      write(6,*) ' c=',c
      stop
      end
