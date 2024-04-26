      implicit integer*2 (i-k)
      real*8 a(10,10,10)
      real*8 d(10)

      do 20 i=1,10
      do 20 j=1,10
      do 20 k=1,10
        a(i,j,k) = 1
20    continue
      d=1
c
      do 10 i=a(1,1,1),10
        do 11 l=d(i),10
11        a(:,:,:) = 1
        do 10 j=1,10
         do 10 k=1,10
           a(k,:,:) = a(k,:,:) + 1
10    continue
c
      print *,a
      end
