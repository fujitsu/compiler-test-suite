      integer,parameter :: N = 1000
      real(4) x(N)
      real(4) r1(N), r11(N), r2(N), r22(N), func1, func2, tmp, tmp2
      integer(4) i1(N), i11(N), i2(N), i22(N)
      equivalence(r1,i1)
      equivalence(r11,i11)
      equivalence(r2,i2)
      equivalence(r22,i22)
      integer(4) num, num2
      real(4) st, ed, inc, erval

      print *, "##### sincos start. #####"

      num = 0
      num2 = 0
      st = -10.0
      ed = 10.0
      inc = (ed - st) / N
      erval = 1.0e-6

      x(1) = st
      do i = 2, N
        x(i) = x(i-1) + inc
      enddo

      do i = 1, N
        r1(i) = sin(x(i))
        r11(i) = cos(x(i))
      enddo

      do i = 1, N
        r2(i) = func1(x(i))
        r22(i) = func2(x(i))
      enddo

      print *, "##### sin #####"

      do i = 1, N
        tmp = abs(abs(r2(i)-r1(i)) / r2(i))
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

      print *, "##### sin NG count = ",  num, " #####"

      print *, "##### cos #####"

      do i = 1, N
        tmp2 = abs(abs(r22(i)-r11(i)) / r22(i))
        if (tmp2.ne.0.0) then
          if (tmp2 > erval) then
            print *, "** NG ** : ", i, ", val = ", x(i), ", ans = ", r22(i), ", result = ", r11(i), ", diff = ", tmp2
            num2 = num2 + 1
          else
            print *, "OK"
          endif
        else
          print *, "OK"
        endif
      enddo

      print *, "##### cos NG count = ",  num2, " #####"

      print *, "##### sincos end. NG count = ",  (num + num2), " #####"

      end

      function func1(x)
        real(4) func1, x
        func1 = sin(x)
      end

      function func2(x)
        real(4) func2, x
        func2 = cos(x)
      end
