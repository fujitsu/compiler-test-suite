      subroutine sub(x,N,a,y,res)
      integer a
      integer N
      integer,dimension(1:N) :: x,y
      integer res

      do i=1,N,2
        if (a > x(i)+12 .and. a > x(i+1)+12) then
          res = res + y(i)
        endif
        if (a > -9+x(i) .and. a > -9+x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)+10 >= a .and. x(i+1)+10 >= a) then
          res = res + y(i)
        endif
        if (-8+x(i) >= a .and. -8+x(i+1) > a) then
          res = res + y(i)
        endif

        if (a > x(i)-10 .and. a > x(i+1)-10) then
          res = res + y(i)
        endif
        if (a < -1-x(i) .and. a < -1-x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)-8 >= a .and. x(i+1)-9 > a) then
          res = res + y(i)
        endif
        if (-1-x(i) > a .and. -1-x(i+1) >= a) then
          res = res + y(i)
        endif

        if (a > x(i)*9 .and. a > x(i+1)*9) then
          res = res + y(i)
        endif
        if (a > 22*x(i) .and. a > 22*x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)*(-10) < a .and. x(i+1)*(-10) <= a) then
          res = res + y(i)
        endif
        if ((-2)*x(i) <= a .and. (-2)*x(i+1) < a) then
          res = res + y(i)
        endif

        if (a > x(i)/(-6) .and. a >= x(i+1)/(-8)) then
          res = res + y(i)
        endif
        if (a <= -39/x(i) .and. a < -39/x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)/(-4) > a .and. x(i+1)/(-4) > a) then
          res = res + y(i)
        endif
        if (-77/x(i) > a .and. -77/x(i+1) > a) then
          res = res + y(i)
        endif
      enddo

      end subroutine

      program branch04
      integer,parameter :: N=50
      integer,parameter    :: ANS=3900
      integer,dimension(1:N) :: x,y
      integer res,a

      x = (/(i,i=1,N)/)
      y = (/(N-i+1,i=1,N)/)
      a = 10
      res = 0
      call sub(x,N,a,y,res)
      if (res==ans) then
         print *,"OK"
      else
         print *,"NG",res
      endif

      end program
