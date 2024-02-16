      subroutine sub(x,N,a,y,res)
      integer a
      integer N
      integer,dimension(1:N) :: x,y
      integer res

      do i=1,N,2
        if (a > x(i)+1 .and. a > x(i+1)+1) then
          res = res + y(i)
        endif
        if (a > 1+x(i) .and. a > 1+x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)+2 >= a .and. x(i+1)+2 >= a) then
          res = res + y(i)
        endif
        if (4+x(i) >= a .and. 4+x(i+1) > a) then
          res = res + y(i)
        endif

        if (a > x(i)-5 .and. a > x(i+1)-5) then
          res = res + y(i)
        endif
        if (a < 16-x(i) .and. a < 16-x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)-4 >= a .and. x(i+1)-4 > a) then
          res = res + y(i)
        endif
        if (13-x(i) > a .and. 23-x(i+1) >= a) then
          res = res + y(i)
        endif

        if (a > x(i)*2 .and. a > x(i+1)*2) then
          res = res + y(i)
        endif
        if (a < 8*x(i) .and. a > 3*x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)*8 < a .and. x(i+1)*4 <= a) then
          res = res + y(i)
        endif
        if (4*x(i) <= a .and. 8*x(i+1) < a) then
          res = res + y(i)
        endif

        if (a > x(i)/6 .and. a >= x(i+1)/8) then
          res = res + y(i)
        endif
        if (a <= 39/x(i) .and. a < 39/x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)/50 > a .and. x(i+1)/50 > a) then
          res = res + y(i)
        endif
        if (7/x(i) > a .and. 7/x(i+1) > a) then
          res = res + y(i)
        endif
      enddo

      end subroutine

      program branch04
      integer,parameter :: N=50
      integer,parameter    :: ANS=2990
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
