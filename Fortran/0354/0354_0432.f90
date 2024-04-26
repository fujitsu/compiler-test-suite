      integer,parameter :: N = 1000
      real(8) x1(N), x2(N)
      real(8) r1(N), r2(N), func, tmp
      integer(8) i1(N), i2(N)
      equivalence(r1,i1)
      equivalence(r2,i2)
      integer(8) num
      real(8) st1, ed1, inc1, erval, st2, ed2, inc2

      print *, "##### datan2 start. #####"

      num = 0
      st1 = 0.2
      ed1 = 19.0
      inc1 = (ed1 - st1) / N
      st2 = 0.2
      ed2 = 119.0
      inc2 = (ed2 - st2) / N
      erval = 1.0e-15

      x1(1) = st1
      x2(1) = st2
      do i = 2, N
        x1(i) = x1(i-1) + inc1
        x2(i) = x2(i-1) + inc2
      enddo

      do i = 1, N
        r1(i) = atan2(x1(i), x2(i))
      enddo

      do i = 1, N
        r2(i) = func(x1(i), x2(i))
      enddo

      do i = 1, N
        tmp = abs(abs(r2(i)-r1(i)) / r2(i))
        if (tmp.ne.0.0) then
          if (tmp > erval) then
            print *, "** NG ** : ", i, ", val = ", x1(i), ", ", x2(i), ", ans = ", r2(i), ", result = ", r1(i), ", diff = ", tmp
            num = num + 1
          else
            print *, "OK"
          endif
        else
          print *, "OK"
        endif
      enddo

      print *, "##### datan2 end. NG count = ",  num, " #####"

      end

      function func(x1, x2)
        real(8) func, x1, x2
        func = atan2(x1, x2)
      end
