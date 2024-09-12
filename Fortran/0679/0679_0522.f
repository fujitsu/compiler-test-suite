      program main
      integer   a(10),b(10),c(10),d(10),n,k
      data      a/1,2,3,4,5,6,7,8,9,10/,b/10*1/,c/10*-1/,n/10/,k/0/
      do 10 i=1,n
        a(i+k)=ishft(a(i),b(i))
   10 continue
      write(6,*) a
      do 20 i=1,n
        a(i+k)=ishft(a(i),c(i))
   20 continue
      write(6,*) a
      do 30 i=1,n
        a(i+k)=ishft(a(i),-1 )
   30 continue
      write(6,*) a
      end
