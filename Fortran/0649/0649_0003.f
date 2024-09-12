      integer i1(10,10,10), func1, a, b, c
      func1(a,b,c)=a+b-c
      do 10 i=5,(10)+5
      print *,i
   10 continue
      i1(:,:,:)=1
      i1=1
      i1(i1(1,1,2):1,2,3)=2
      i1(func1(4,1,3),1,2)=3
      print *,' *** OK *** '
      end
