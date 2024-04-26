      real*4 a(20,20),b(20,20),c(20,20)
      data  a,b,c/1200*1./,nn/18/
      do 20 k=2,nn
       n3=k+1
       if (mod(k,2).eq.1) goto 20
       do 10 i=2,nn
        n1=i+1
        if (i.gt.5) then
         n2=i-1
        else
         n2=i+1
        endif
        do 10 j=2,nn
          a(n1,j)=a(i,n2)+b(k,j)*c(i,j)
          b(n3,j+1)=a(n3,j)+c(n2,j)
 10   continue
 20   continue
      write(6,*) a
      write(6,*) b
      stop
      end
