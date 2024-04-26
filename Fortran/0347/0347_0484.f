      dimension a(10),b(10),c(10)
      data a/10*0.0/
      data b/4*1.0,2,5*1.0/,c/10*1.0/

      n=2
      ss=0.
      do 10 i=1,10
        if(n.eq.2) then
          ss=i*3.
        endif
        if ( b(i) .gt. c(i) ) go to 20
          a(i) = 1.0 + ss
  10  continue
 20   write(6,*) a
      stop
      end
