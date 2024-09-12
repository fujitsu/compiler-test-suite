      program main
      real    a(1000,6,6),b(1000,6,6),c(1000,6,6)
      data    a,b,c/78000*3.5,30000*-9.125/
      data    n,m/1000,6/
      do 10 i=1,1000,2
       do 11 j=1,6
        do 12 k=1,6
         a(i,j,k)=b(i,j,k)+c(i,j,k)
  12    continue
  11   continue
  10  continue
      write(6,*) a(1,1,1),a(6,6,6)
      call sub(a,b,c,n,m)
      stop
      end
      subroutine sub(a,b,c,n,m)
      real  a(n,m,m),b(n,m,m),c(n,m,m)
      do 110 i=1,n,2
       do 111 j=1,m
        do 112 k=1,m
         a(i,j,k)=b(i,j,k)+c(i,j,k)
 112    continue
 111   continue
 110  continue
      write(6,*) a(2,2,2)
      stop
      end
