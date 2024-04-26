       implicit real*8(a-b,d),logical*4(l) ,complex*16(c)
       real aa(10)
       common /blk/ cd10(10,10,10),cd20(10,10,10)
       nn=10
c
       do 10 i=1,nn
        dx=dfloat(i)
        do 10 j=1,nn
         dy=dfloat(j)
         do 10 k=1,nn
          cd10(i,j,k)=dy
  10   continue
        write(6,*) cd10
        end
