      dimension a(10),b(10)
      data x/3.0/,y/2.0/
      data a/10*0.0/,b/1,2,3,4,5,6,7,8,9,10/
      do 10 i=1,10
        if ( i .gt. 5 ) go to 200
          if ( x .le. 2.0 ) go to 10
 100        a(i) = b(i)
            go to 10
 200      if ( y .gt. 3.0 ) go to 100
  10  continue
      write(6,*) a
      stop
      end
