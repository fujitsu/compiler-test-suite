      dimension  a(10,10,10),b(10,10,10),c(10,10,10)
      data  a,b,c/1000*1.0,1000*2.0,1000*3.0/
      call sub(a,b,c,10,10,10,2)
      stop
      end
      subroutine  sub(a,b,c,n1,n2,n3,n0)
      dimension  a(n0-1:n1,n0-1:n2,n0:n3),b(n0-1:n1,n0:n2,n0:n3),
     *           c(n0-1:n1,n0:n2,n0:n3)
      data  n/2/

      do 30 i=n0-1,n1
       do 20 j=n0,n2,n
         do 10 k=n0,n3
           a(i,j,k) = a(i,j,k) + c(i,j,k)
           b(i,j,k) = b(i,j,k) * a(i,j,k)
   10    continue
   20   continue
   30 continue

      write(6,*) a,b
      stop
      end
