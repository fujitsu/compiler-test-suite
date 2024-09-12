      dimension a(10),b(10),c(10),d(10,10),e(10,20),f(30),g(10)
      integer*4 l(10),m(10)
      logical*4 lb(10)
      data a/10*0./,b/1,2,3,4,5,6,7,8,9,10/,g/10*0/
      data d/50*1.,50*2./,e/50*1.,50*2.,100*3./,f/30*4./
      data l/1,2,3,4,5,6,7,8,9,10/,m/10,9,8,7,6,5,4,3,2,1/
      data lb/5*.true.,5*.false./
      c=0

      do 10 j=1,10
        s = 0.0
        do 10 i=1,10
          if ( lb(i) ) then
            a(l(i)) = b(l(i))
            c(l(i)) = d(m(i),j) + e(m(i),j)
            g(l(i)) = a(l(i)) + c(m(i))
            s = s + f(i)
          endif
  10  continue
      write(6,*) ' a = ',a
      write(6,*) ' c = ',c
      write(6,*) ' g = ',g
      write(6,*) ' s = ',s
      stop
      end
