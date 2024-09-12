      real*4 a1(100,100),c1(100,100)

      data a1/1,2,3,4,5,6,7,8,9,10,9990*0./c1/10000*8./
      do 6 j=1,10
          do 8 i=1,10
           a1(i,j)=i
    8     continue
    6 continue

      do 13 j=1,100
        do 14 i=1,100
          c1(i,j)=a1(i,j)
          a1(i,j)=a1(j,i)
   14   continue
   13 continue
      write(6,*) a1,c1
      end
