      program main
      integer   a(10),b(10),c(10),d(10),n
      data      a/1,2,3,4,5,6,7,8,9,10/,b/10*1/,c/10*-1/,n/10/
      do 10 i=1,n
        d(i)=ishft(a(i),b(i))
   10 continue
      write(6,*) d
      do 20 i=1,n
        d(i)=ishft(a(i),c(i))
   20 continue
      write(6,*) d
      do 30 i=1,n
        d(i)=ishft(a(i),-1 )
   30 continue
      write(6,*) d
      end
