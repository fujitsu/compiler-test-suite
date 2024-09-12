      dimension a(10),b(10),m(10),l(10)
      data a/10*0.0/
      data m/-1,0,1,1,-1,1,0,0,1,-2/
      data l/1,2,3,4,5,6,7,8,9,10/
      data b/10*1.0/
      do 100 i=1,10
        if ( m(i) ) 10,20,30
  10      a(i) = b(i) / 3.
          if (l(i)) 11,11,12
  11      go to 100
  20      a(i) = b(i) + 5.
          if (l(i)) 21,21,22
  21      go to 100
  30      a(i) = b(i) - 2.
          if (l(i)) 31,31,32
  31      go to 100
  12      a(i) = 7*a(i)
          go to 100
  22      a(i) = 4*a(i)
          go to 100
  32      a(i) = 5*a(i)
 100  continue
      write(6,*) a
      stop
      end
