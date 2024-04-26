      integer,parameter :: N = 1000
      real(4) x(N)
      real(4) r1(N), r2(N), func, tmp
      integer(4) i1(N), i2(N)
      equivalence(r1,i1)
      equivalence(r2,i2)
      integer(4) num
      real(4) st, ed, inc, erval

      print *, "##### erfc start. #####"

      num = 0
      st = -10.0
      ed = 10.0
      inc = (ed - st) / N
      erval = 1.0e-6

      x(1) = st
      do i = 2, N
        x(i) = x(i-1) + inc
      enddo

      do i = 1, N
        r1(i) = erfc(x(i))
      enddo

      do i = 1, N
        r2(i) = func(x(i))
      enddo

      do i = 1, N
         if (r2(i).eq.0) then
            tmp = abs(r1(i))
         else
            tmp = abs(abs(r2(i)-r1(i)) / r2(i))
         endif
        if (tmp.ne.0.0) then
          if (tmp > erval) then
            print *, "** NG ** : ", i, ", val = ", x(i), ", ans = ", r2(i), ", result = ", r1(i), ", diff = ", tmp
            num = num + 1
          else
            print *, "OK"
          endif
        else
          print *, "OK"
        endif
      enddo

      print *, "##### erfc end. NG count = ",  num, " #####"

      end

      function func(x)
        real(4) func, x
        func = erfc(x)
      end
