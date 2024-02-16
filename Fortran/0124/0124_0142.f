      subroutine sub(x,N,a,y,res)
      integer N
      real,dimension(1:N) :: x,y
      real res

      do i=1,N,2
        if (a == x(i)/10 .or. a == x(i+1)/10) then
          res = res + y(i)
        endif
      enddo

      end subroutine

      program branch03
      integer,parameter :: N=50
      real,parameter    :: ANS=3.99999991e-02
      real,parameter    :: G  =0.00000010e-02
      real,dimension(1:N) :: x,y
      real res

      x = (/((real(i)/50.),i=1,N)/)
      y = (/((real(N-i+1)/50.),i=1,N)/)
      a = 0.1
      res = 0.0
      call sub(x,N,a,y,res)
      if (abs(res-ANS)<=G) then
         print *,"OK"
      else
         print *,"NG ",res
      endif

      end program
