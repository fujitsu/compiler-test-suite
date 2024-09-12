      dimension a(10),b(10),c(10),m(10)
      data m/1,2,3,4,5,6,7,8,9,10/
      data j/6/,k/3/
      data a/10*0.0/
      data b/10*1.0/
      data c/10*2.0/
      do 10 i=1,10
        if ( m(j) - 5 ) 10,20,30
  20      a(i) = b(i) + c(i)
          go to 10
  30      a(i) = b(i) * c(i)
          if ( m(k) ) 32,10,31
  32      go to 10
  31      a(i) = 3*a(i)
  10  continue
      write(6,*) a
      stop
      end
