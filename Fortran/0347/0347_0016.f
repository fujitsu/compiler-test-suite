      dimension a(10),b(10),c(10)
      data a/10*0.0/,b/10*1.0/,c/10*2.0/
      do 10 i=1,10
       do 20 j=1,10
        do 30 k=1,10
          a(i)=b(i)+c(i)
          goto 21
  30    continue
  21    continue
  20   continue
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
