      real*4  a(1000,10)/10000*2/
      do 10 j=1,10
      do 100 i=1,100
        a(i,j)=j*2
 100    continue
 10     continue
      do 4 l=2,10
      do 40 j=2,10
      do 400 i=2,100
        a(i,j)=a(i-1,l)
 400    continue
 40     continue
 4      continue
      write(6,*) ((a(i,j),i=1,100),j=1,10)
      end
