      dimension a1(10),a2(10),b(10),c(10)
      logical*4 l(10)
      data a1/10*0.0/,l/5*.true.,5*.false./
      data a2/10*0.0/
      data b/10*1.0/,c/10*2.0/

      do 10 i=1,10
        a1(3) = b(i) + c(i)
  10  continue
      write(6,*) a1
      do 20 i=1,10
        if( l(i) ) go to 20
          a2(5) = b(i) * c(i)
  20  continue
      write(6,*) a2
      stop
      end
