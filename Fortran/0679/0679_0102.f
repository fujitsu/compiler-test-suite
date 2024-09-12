      dimension a(5,5,5,5,5,5,5),b(5,5,5,5,5,5,5)
      data  a,b/78125*1.0,78125*2.0/
      integer  o,p

      do 10 i=1,5
      do 10 j=1,5
      do 10 k=1,5
      do 10 l=1,5
      do 10 m=1,5
      do 10 n=1,5
      do 10 o=1,5
      do 10 p=1,5
          a(i,j,k,l,m,n,o) = a(i,j,k,l,m,n,o) + b(i,j,k,l,m,n,o)
   10 continue

      print *,(((((((a(i1,i2,i3,i4,i5,i6,i7),i1=1,5,3),i2=2,4),i3=4,5),
     1         i4=1,5,4),i5=1,2),i6=3,4),i7=1,5)
      stop
      end
