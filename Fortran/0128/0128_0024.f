      complex c1(10),c2(10),c3(10),sub
      do 10 i=1,10
         c1(i)=cmplx(i,10-i)
 10   continue
      do 20 i=1,10
         c2(I)=cmplx(i+10,20-i)
 20   continue
      do 30 i=1,10
         c3(i)=sub(c1(i)+c2(i))
 30   continue
      do 40 i=1,10
         if((c1(i)+c2(i)).ne.c3(i))then
            print *,'ng'
         endif
 40   continue
      print *,'ok'
      end

      complex function sub(c)
      complex c
      sub=c
      return
      end
