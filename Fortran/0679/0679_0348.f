      dimension a(10),b(10)
      logical*4 l1(10)
      data l1/5*.true.,5*.false./,x/0.0/,y/1.0/
      data a/10*0.0/,b/10*1.0/
      do 10 i=1,10
        if ( l1(i) ) go to 200
          if ( x .gt. 1.0 ) go to 10
 100        a(i) = b(i)
            go to 10
 200      if ( y .eq. 0 ) go to 100
  10  continue
      write(6,*) a
      stop
      end
