      real*8 a(20,20),b(20,20),c(20,20)
      data  a,b,c/1200*1./,nn/18/
      do 20 k=2,nn
       n3=k+1
       a(n3,k)=float(k)
       n3=k
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
      do 30 k=2,nn
       n3=k+1
       a(n3,k)=float(i)
       n3=k
       if (mod(k,2).eq.0) goto 30
       do 40 i=2,nn
        n1=i+1
        if (a(k,i).gt.5.0) then
          n2=i
        else
          n2=1
        endif
        c(n1,n2)=a(i,k)
        n1=i-1
        if (i.gt.5) then
         n2=i-1
        else
         n2=i+1
        endif
        do 40 j=2,nn
          b(n1,j-1)=a(i,n2)+b(k,j)*c(i,j)
          c(n3,j+1)=a(n3,j)+b(i,j)
 40   continue
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
