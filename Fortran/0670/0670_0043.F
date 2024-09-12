#define a(i,j,k)  \
      bb(i,j,k)
      integer bb(100,100,100),b(2,2),c(2,2)
      
      i=1;j=1;k=1
      b(2,1)=2
      c(2,1)=3
      a(I+1,
     a b(J+1,j),
     b   c(K+1,k))=100
      if (a(2,2,3)/=100)print *,'error'
      print *,'pass'
      end
