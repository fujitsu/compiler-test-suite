      real*8 a(10,10),b(10,10),f(10,10)
      data a/1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,
     1       3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,
     2       2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,
     3       1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,
     4       3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1/
      data f/3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,
     1       5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,
     2       4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,
     3       3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,
     4       5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3,4,5,3/
      data b/100*0./
      do 20 i=1,10
      do 20 j=1,10
        s=0.0
        do 10 k=1,10
 10       s=s+a(i,k)*f(k,j)
 20   b(i,j)=s
      print *,b
      end
