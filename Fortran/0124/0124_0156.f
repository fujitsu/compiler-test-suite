      subroutine sub(x,N,a,y,res)
      integer N
      real,dimension(1:N) :: x,y
      real res

      do i=1,N,2
        if (a > x(i)+0.5 .and. a > x(i+1)+0.5) then
          res = res + y(i)
        endif
        if (a > 0.6+x(i) .and. a > 0.6+x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)+0.6 >= a .and. x(i+1)+0.6 >= a) then
          res = res + y(i)
        endif
        if (0.6+x(i) >= a .and. 0.6+x(i+1) > a) then
          res = res + y(i)
        endif

        if (a > x(i)-0.1 .and. a > x(i+1)-0.1) then
          res = res + y(i)
        endif
        if (a < 0.3-x(i) .and. a > 0.3-x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)-0.1 >= a .and. x(i+1)-0.1 > a) then
          res = res + y(i)
        endif
        if (0.3-x(i) > a .and. 0.3-x(i+1) >= a) then
          res = res + y(i)
        endif

        if (a > x(i)*3.0 .and. a > x(i+1)*3.0) then
          res = res + y(i)
        endif
        if (a < 3.0*x(i) .and. a > 3.0*x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)*4.0 < a .and. x(i+1)*4.0 <= a) then
          res = res + y(i)
        endif
        if (4.0*x(i) <= a .and. 4.0*x(i+1) < a) then
          res = res + y(i)
        endif

        if (a > x(i)/0.9 .and. a >= x(i+1)/0.9) then
          res = res + y(i)
        endif
        if (a <= 0.8/x(i) .and. a < 0.8/x(i+1)) then
          res = res + y(i)
        endif
        if (x(i)/2.0 > a .and. x(i+1)/2.0 > a) then
          res = res + y(i)
        endif
        if (0.7/x(i) > a .and. 0.7/x(i+1) > a) then
          res = res + y(i)
        endif
      enddo

      end subroutine

      program branch04
      integer,parameter :: N=50
      real,parameter    :: ANS=79.4400253
      real,parameter    :: G  = 0.0000003
      real,parameter    :: EANS=78.7200165
      real,parameter    :: EG  = 0.0000005
      real,dimension(1:N) :: x,y
      real res

      x = (/((real(i)/50.),i=1,N)/)
      y = (/((real(N-i+1)/50.),i=1,N)/)
      a = 0.2
      res = 0.0
      call sub(x,N,a,y,res)
      if (abs(res-ANS)<=G) then
         print *,"OK"
      else
         print *,"NG ",res
         if (abs(res-EANS)<=EG) then
            print *,"OK"
         endif
      endif

      end program
