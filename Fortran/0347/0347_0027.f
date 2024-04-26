      common     a(20),b(20),c(20),d(20)
      data   n/1.0/,m/15/,isw/0/
      s = 1.0
      do 10 i=1,20
        a(i) = s
        b(i) = s * 2.0
        c(i) = s + 1.0
        d(i) = s + 2.0
 10   continue

      do 20 j=2,15
        a(j) = (c(j) + d(j)) / b(j+1)
        c(j) = (b(j) - a(j)) / d(j)
        if (a(j).gt.c(j)) then
          b(j) = a(j-1) * 2.0 + d(j)
          d(j) = a(j) + b(j) + c(j)
        else
          b(j) = (c(j) + a(j)) * 2.0 - d(j)
          d(j) = (c(j) - a(j)) * b(j)
        endif
         call  iolist(n,isw)
         n = n + 1
 20   continue
      do 30 k=m,2,-1
        n = k
        s = a(k) + b(k) + c(k)
        if (s.gt.50.0) call  iolist(n,isw)
        c(k) = b(k) * d(k) / a(k)
        a(k) = s / c(k)
 30   continue
      stop
      end

      subroutine   iolist(n,isw)
      common    a(20),b(20),c(20),d(20)

      if (isw.eq.0) then
       write(6,*)
     *    '         ** a **      ** b **     ** c **      ** d **  '
       isw = 1
      endif
      write(6,600) n,a(n),b(n),c(n),d(n)
 600  format(1x,i4,4f12.5)
      return
      end
