      integer a(20),b(20),i,k
      do 10 i=1,20
         a(i)=i
 10   continue
      k=0
      do 40 j=0,10
         do 20 i=1,10
            b(i+j+k)=a(i+j+k)
            call sub(k)
 20      continue
 40   continue
      do 30 i=1,20
         if(b(i).ne.i)then
            print *,'ng'
         endif
 30   continue
      end

      subroutine sub(k)
      integer k
      k=0
      return
      end
