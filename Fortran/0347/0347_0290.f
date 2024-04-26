      real*4  a(20,20),b(20,20),c(20,20),d(20,20)
      data  a,b,c,d/400*1.,400*2.,400*3.,400*3.1/,nn/17/
      data  n1,n2,n3/1,2,3/
      do 30 k=2,nn
       do 30 i=2,nn
        do 20 j=2,nn
          b(i,j)=c(i+1,j)+a(i,j)
 20     continue
        a(i+n1+n2-n3,k)=b(i+1-n1+n2,k)*2.0-d(k,i)
 30   continue
      write(6,*) ' a= ',a
      write(6,*) ' b= ',b
      stop
      end
