      implicit   integer*4(a-z)
      dimension  a(20,20),b(20,20),c(20,20),d(20,20)
      dimension  aa(5,5,5,5),bb(5,5,5,5)
      dimension  cc(5,5,5,5),dd(5,5,5,5),ee(5,5,5,5)
      data a,b,c,d/1600*0/
      s = 1
      do 10 i=1,10
        do 10 j=1,10
         a(i,j) = s
         b(i,j) = s + 1
         c(i,j) = s * 2
         d(i,j) = s + 2
 10   continue
      do 20 i=2,18,2
        do 20 j=3,17
          a(i,j+2) = c(i+2,j) * d(i,j+1)
          d(i,j) = a(i,j) + b(i,j)
 20   continue
      do 30 k=1,16,2
        do 40 l=4,14
          c(k,l) = b(k,l+1) * d(k,l-1) - a(k,l)
          b(k,l) = a(k+1,l+1) - c(k,l-2) + d(k,l)
 40     continue
 30   continue
      write(6,*) ((a(i,j),i=3,4),j=5,6)
      write(6,*) ((b(i,j),i=1,2),j=7,8)
      write(6,*) ((c(i,j),i=5,6),j=2,3)
      write(6,*) ((d(i,j),i=7,8),j=6,7)
      do 100 i=1,5
       do 100 j=1,5
        do 100 k=1,5
         do 100 l=1,5
          aa(i,j,k,l)=i
          bb(i,j,k,l)=i+j
          cc(i,j,k,l)=i+j+k
          dd(i,j,k,l)=i+j+k+l
          ee(i,j,k,l)=i+j+k+l+l
 100  continue
      do 11 i=2,5
        ee(i,4,5,5)=aa(i,4,5,5)-1
        do 22 j=1,4
          ee(i,j,5,5)=bb(i,j,5,5)+1
          do 33 k=3,5
            ee(i,j,k,5)=cc(i,j,k,5)+1
            do 44 l=2,5
              ee(i,j,k,l)=dd(i,j,k,l)-1
              aa(i,j,k,l)=ee(i,j,k,l)
 44         continue
            bb(i,j,k,2)=ee(i,j,k,2)
 33       continue
          cc(i,j,1,2)=ee(i,j,3,2)
 22     continue
      dd(i,1,3,2)=ee(i,1,3,2)
 11   continue
      write(6,*) aa,bb,cc,dd,ee
      stop
      end
