      real a(1:10,1:10,1:10),b(10,10,10)
      data a,b/1000*1.0,1000*2.0/
      call  sub(a,b,1,10,1,10)
      print  *,(((a(i,j,k),i=1,10,3),j=1,10,2),k=1,10,3)
      end
      subroutine  sub(a,b,n1,n2,n3,n4)
      dimension   a(n1:n2,n1:n2,n3:n4),b(n1:n2,n1:n2,n3:n4)
      do 10 i=n1,n2
       do 10 j=n1,n2
        do 10 k=n3,n4
         a(i,j,k) = a(i,j,k) + b(i,j,k) * 2.
   10 continue
      return
      end
