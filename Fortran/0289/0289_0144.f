      integer a,b,c,x,y
      integer w_a,w_b
      integer,allocatable::w_y(:),w_x(:)
      pointer (py ,y),(pa ,a),(pb ,b),(px ,x)

      allocate (w_y(1))
      py = loc (w_y(1))
      y=10

      pa = loc (w_a)
      pb = loc (w_b)
      a=10
      b=20
      c=30
      if (y.gt.0) then
        write(6,*) '***   program   ***'
      end if
      allocate (w_x(1))
      px = loc (w_x(1))
      if (y) 100,200,300
  100 x=a-b
      goto 400
  200 x=a-c
      goto 400
  300 x=a+b
      goto 400
  400 write (6,*)x
      a=3
      b=5
      c=6
      if (x.gt.0) then
        write(6,*) '***  program ok  ***'
      else
        write(6,*) '***  program ng  ***'
      end if
      deallocate (w_y ,w_x)
      stop
      end
