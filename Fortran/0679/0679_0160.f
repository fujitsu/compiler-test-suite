      dimension a(2,4,8),b(2,4,8),c(2,4,8),d(2,4,8)
      data  a,b,c/64*1.0,64*2.0,64*3.0/
      data  d    /64*3.0/

      do 10 i=1,2
      do 10 k=1,8,2
      do 10 j=1,4
        if( k .eq. 3 .or. j .le. 2 ) then
          a(i,j,k) = a(i,j,k) + b(i,j,k) + c(i,j,k)
          d(i,j,k) = d(i,j,k) - b(i,j,k) + c(i,j,k)
        else
          a(i,j,k) = a(i,j,k) - b(i,j,k) - c(i,j,k)
          d(i,j,k) = d(i,j,k) - b(i,j,k) - c(i,j,k)
        endif
   10 continue

      print *,a,d
      stop
      end
