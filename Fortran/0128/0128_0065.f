      do 10 i=1,100
         k=0
         k=k+1
 10   continue

      do 101 i=1,50
         k=k+1
 101  continue

      do 102 i=1,70
         k=k+1
 102  continue

      print *,k

      if (k.eq.121) then
         print *,"ok"
      else
         print *,"ng"
      endif

      end

