      complex root(4), y
      real a,b,c,d,x
      real e,f               
      real,parameter :: ans1=0.624935210
      real,parameter :: ans2=9.209050e-02
      real,parameter :: ans3=0.1724674
      real,parameter :: error1=0.0000025
      real,parameter :: error2=0.00001e-02
      real,parameter :: error3=0.0000002

      a = 10
      do 10 i=1, 50
         a = a * 0.98_4
         b = a * 0.97_4
         c = a * 0.96_4
         d = a * 0.95_4
 10      a = d * 0.94_4

      e = a
      f = b
      do 15 i=1, 4
         if (i.eq.1) then
            go to 16
         endif
         if (i.eq.2) then
            e = -0.5 * e
            go to 16
         endif
         if (i.eq.3) then
            e = -0.5 * e
            f = -0.5 * f
            go to 16
         endif
         if (i.eq.4) then
            e = -0.5 * e
            go to 16
         endif
 16      root(i)=cmplx(e,f)
 15      continue

      y = cmplx(0.0,0.0)
      do 17 i=1, 50
         j = i - (i/4)*4 + 1
 17      y = y + root(j)


      x = abs(root(1))
      do 20 i=1, 50
         j = i - (i/4)*4 + 1
         if (j.eq.0) then
            x = x + abs(root(1))
         else
            x = x + abs(root(j))
         endif
 20   continue

      if ((abs(x-ans1)<=error1)
     +     .and.(abs(real(y)-ans2)<=error2)
     +     .and.(abs(aimag(y)-ans3)<=error3)) then
         print *,"OK"
      else
         print *,"NG",x,y
      endif
      end
