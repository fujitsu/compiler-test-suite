      dimension a(2,4,8,2),b(2,4,8,2),c(2,4,8,2)
      data  a,b,c/128*1.0,128*2.0,128*3.0/

      do 10 k=1,8,2
      do 10 i=1,2
      do 10 j=1,4,2
      do 10 l=1,2
          a(i,j,k,l) = a(i,j,k,l) + b(i,j,k,l) + c(i,j,k,l)
   10 continue

      print *,a
      stop
      end
