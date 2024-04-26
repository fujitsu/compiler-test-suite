      integer,parameter :: N = 1000
      real(8) x(N)
      real(8) r1(N), r2(N), func, tmp
      integer(8) i1(N), i2(N)
      equivalence(r1,i1)
      equivalence(r2,i2)
      integer(8) num
      real(8) st, ed, inc, erval

      print *, "##### dlog10 start. #####"

      num = 0
      st = 0.1
      ed = 10.0
      inc = (ed - st) / N
      erval = 1.0e-15

      x(1) = st
      do i = 2, N
        x(i) = x(i-1) + inc
      enddo

      do i = 1, N
        r1(i) = log10(x(i))
      enddo

      do i = 1, N
        r2(i) = func(x(i))
      enddo

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

      print *, "##### dlog10 end. NG count = ",  num, " #####"

      end

      function func(x)
        real(8) func, x
        func = log10(x)
      end
