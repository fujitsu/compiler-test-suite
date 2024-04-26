      integer a,b,c,x,y
      integer w_x
      integer,allocatable,dimension(:)::w_y
      pointer (py ,y),(px ,x)
      px = loc (w_x)      
      x=0
      allocate (w_y(1))
      py = loc (w_y(1))
      y=sin(0.0)
      a=10
      b=20
      c=30

      go to (100,200,300),y
      x=a-b
      goto 400
  100 x=a+b
      goto 400
  200 x=a-c
      goto 400
  300 x=a+c
  400 write (6,*)x
      if(x.lt.0)then
        write(6,*) '***  program ok ***'
      else
        write(6,*) '***  program ng ***'
      end if
      a=3
      b=5
      c=6
      stop
      end
