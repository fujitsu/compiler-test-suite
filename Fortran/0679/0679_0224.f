      parameter (n1=10,n2=10,n3=1)
      real a(n3:n1,n3:n2),b(n3:n1,n3:n2)
      data a,b/100*1.0,100*2.0/
      do 10 i=1,10
       do 10 j=1,10
        a(i,j) = a(i,j) + b(i,j) * 2.
   10 continue
      print *,((a(i,j),i=1,10,2),j=1,10,3)
      end
