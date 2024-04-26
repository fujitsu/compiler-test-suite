      real*4  a, b, c
      real*4  aa, bb, res

      aa = 1.0
      res = 0.0
      bb = 10
      c = 0.0

      if (aa .gt. 0.0) then
        res = 1.0
      else
        do 100 res=aa,bb
          a = res + 1.0
          b = a * 2.0
          c = b + 2.0
 100    continue
      endif
      print *, 'res=', res
      print *, 'c=', c
      END                      
