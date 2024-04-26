      real*8 a(10,10,10)
      real*8 d(10)

      a=1
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
