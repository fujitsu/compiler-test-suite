      integer*4 i1(4), i2(5,4), i3(6,5,4), ia(4,1)
      real*8 d1(4), d2(5,4), d3(6,5,4), da(4,1)

      l=1
      do 10 j=1,4
         do 10 i=1,1
            ia(j,i)=l
            da(j,i)=l
 10         l=l+1

      l=1
      do 20 i=1,4
         i1(i)=l
         d1(i)=l
 20      l=l+1

      l=1
      do 30 j=1,5
         do 30 i=1,4
            i2(j,i)=l
            d2(j,i)=l
 30         l=l+1

      l=1
      do 40 k=1,6
         do 40 j=1,5
            do 40 i=1,4
               i3(k,j,i)=l
               d3(k,j,i)=l
 40            l=l+1

      stop
      end
