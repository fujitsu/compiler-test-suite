      dimension a(10),b(10)
      logical*4 l1(10),l2(10),l3(10)
      data l1/5*.true.,5*.false./,l2/5*.false.,2*.false.,3*.true./
      data l3/3*.false.,2*.true.,5*.false./
      data a/10*0.0/,b/10*1.0/
      do 10 i=1,10
        if ( l1(i) ) go to 200
          if ( l2(8) ) go to 10
 100        a(i) = b(i)
            go to 10
 200      if ( l3(i) ) go to 100
  10  continue
      write(6,*) a
      stop
      end
