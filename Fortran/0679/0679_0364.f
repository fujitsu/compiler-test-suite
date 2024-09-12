      dimension a(10,10),b(10,10)
      logical*4 l1(10)
      data a/100*0.0/,b/100*1.0/,y/2.0/,x/0.1/
      data l1/5*.true.,5*.false./

      do 10 i=1,10
        if ( l1(i) ) go to 200
          if ( x .gt. 1.0 ) go to 10
 100        do 20 j=1,10
              a(j,i) = b(j,i)
  20        continue
            go to 10
 200      if ( y .gt. 1.0 ) go to 100
  10  continue
      write(6,*) a
      stop
      end
