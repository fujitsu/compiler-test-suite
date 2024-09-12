      character a*255,b*3,c*4
      character al*10000,bl*600
      data a/'123456ab789ab012345abc6789abcd'/
      data b/'abc'/,c/'abcx'/
      data bl/'1234567890'/
      data al(1:9)/'123456789'/
      data al(1000:1008)/'12345678'/
      data al(9001:9600)/'1234567890'/
      i=index(a,b)
      j=index(a,c)
      il=index(al,bl)
      jl=index(al,c)
      write(6,100)
100   format(1h ,'*** test of index-function ***')
      if(i.eq.20.and.j.eq.0.and.il.eq.9001.and.jl.eq.0)
     1  go to 11
      write(6,200)i,j,il,jl
200   format(1h ,'*** error ****'/
     1 1h ,'i=   20,j=    0,il= 9001,jl=    0 '
     2     'is expected'/1h ,'i=',i5,',j=',i5,
     3     ',il=',i5,',jl=',i5)
      stop
11    write(6,300)
300   format(1h ,'*** test o.k ***')
      stop
      end
