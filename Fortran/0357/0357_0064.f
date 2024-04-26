      complex root(4), y
      real a,b,c,d,x
      real e,f

      a = 10
      do 10 i=1, 50
         a = a * 0.98
         b = a * 0.97
         c = a * 0.96
         d = a * 0.95
 10      a = d * 0.94

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

      write(*,*) x
      write(*,*) y

      end
