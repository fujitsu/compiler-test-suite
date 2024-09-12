      dimension  a(10,10,10),b(10,10,10),c(10,10,10)
      data  a,b,c/1000*1.0,1000*2.0,1000*3.0/
      call sub(a,b,c,10,10,10)
      stop
      end
      subroutine  sub(a,b,c,n1,n2,n3)
      dimension  a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)

      do 30 i=1,n1
       do 20 j=1,n2
         do 10 k=1,n3
           a(i,j,k) = a(i,j,k) + c(i,j,k)
           b(i,j,k) = b(i,j,k) * a(i,j,k)
   10    continue
   20   continue
   30 continue

      write(6,*) a,b
      return
      end
