      program main
      integer*4 i8a(10,10),i8c(10,10),i8b(10,10),i8d(10,10)
      integer*4 z/2/,x/3/,i4a(10)
      data i8a/100*-5/,i8c/100*2/,i8b/100*8/
      data i8d/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/
      do 10 i=1,10
        do 10 j=1,10
          i8a(i,j)=ishft(i8d(i,j),z)
          i8b(i,j)=ishft(i8d(i,j),x)
   10   continue
      do 30 i=1,10
        i4a(i)=ieor(i,3)
        do 20 j=1,10
          i8c(i,j)=iand(i8a(i,j),i8b(i,j))
   20   continue
        i4a(i)=i4a(i)+i
   30 continue
      write(6,*) i8c
      write(6,*) i4a
      stop
      end
