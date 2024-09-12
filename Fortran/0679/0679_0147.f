      dimension a(2,4,8),b(2,4,8),c(2,4,8)
      data  a,b,c/64*1.0,64*2.0,64*3.0/

      do 10 i=1,2
      do 10 j=1,4
      do 10 k=1,8,2
        if( i .le. 3) then
          a(i,j*1,k) = a(i,j*1,k) + b(i,j+1-1,k) + c(i,j+1-1,k)
        endif
   10 continue

      print *,a
      stop
      end
