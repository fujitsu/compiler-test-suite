      real a(1:10,1:10),b(10,1:10)
      data a,b/100*1.0,100*2.0/
      call  sub(a,b,0,1,10,-1)
      print  *,((a(i,j),i=1,10,2),j=1,10,2)
      end
      subroutine  sub(a,b,n1,n2,n3,n4)
      dimension   a(n1+n2:n1+10,n4+2:n3),b(n1+n2:n1+10,n4+2:n3)
      do 10 i=n1+n2,n1+10
       do 10 j=n4+2,n3
        a(i,j) = a(i,j) + b(i,j) * 2.
   10 continue
      return
      end
