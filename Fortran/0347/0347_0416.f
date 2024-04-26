      program main
      dimension a(10),b(10),c(10)
      data a/10*0.0/
      data b/4*1.0,2,5*1.0/,c/10*1.0/
      do 10 i=1,10
        if( b(i) .gt. c(i) ) go to 20
          a(i) = 1.0
  10  continue
 20   write(6,*) a
      stop
      end
