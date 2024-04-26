      real*8 a(1000,10)/10000*0.d0/
      integer nc(2)/10,10/

      idx2=nc(1)
      do 1 j=1,10
        do 2 i=1,100
          idx1=i+j+nc(1)-nc(2)
          a(idx1,idx2)=a(idx1,idx2)+sin(idx1*0.00314)
 2        continue
 1      continue

      write(6,*)(a(i,10),i=1,1000,11)
      end
