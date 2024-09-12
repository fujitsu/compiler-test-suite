      dimension a(10),b(10),c(10),m(10)
      data a/10*0.0/
      data m/2,2,4,5,5,7,8,8,10,10/
      data b/10*1.0/
      data c/10*2.0/
      do 10 i=1,10
        if ( m(i) - i ) 10,20,30
  20      a(i) = b(i) + c(i)
          go to 10
  30      a(i) = b(i) * c(i)
  10  continue
      write(6,*) a
      stop
      end
