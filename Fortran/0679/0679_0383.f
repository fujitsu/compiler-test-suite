      real*8 a(10),b(10),c(10),d(10),s1,s2
      logical*4 m(10),m1(10),m2(10),m3(10)
      data m/10*.false./,s1/0/,b/10*1.0/,a/10*2./,c/10*1./,d/10*0./
      data m1/5*.true.,5*.false./,m2/10*.false./,m3/10*.false./,s2/0/
      do 10 i=1,10
        if(m(i)) then
           a(i) = b(i)/s1
        endif
  10  continue
      write(6,*) a
      do 20 i=1,10
        if(m1(i)) then
           a(i) = b(i)
           if ( m2(i) ) then
             c(i) = a(i) / s1
           endif
           if ( m3(i) ) then
             d(i) = c(i) / s2
           endif
        endif
  20  continue
      write(6,*) a,c,d
      stop
      end
